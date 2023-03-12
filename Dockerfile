FROM nginxinc/nginx-unprivileged:mainline

ARG USER=nginx
ARG WORKDIR=/${USER}

COPY nginx/default.conf /etc/nginx/conf.d/

COPY --chown=${USER}:${USER} . ${WORKDIR}

RUN rm ${WORKDIR}/Dockerfile ${WORKDIR}/.dockerignore && rm -r ${WORKDIR}/nginx

WORKDIR ${WORKDIR}

HEALTHCHECK --interval=60s --timeout=10s --retries=5 CMD curl -so /dev/null http://localhost:8080/ || exit 1

EXPOSE 8080
