FROM public.ecr.aws/nginx/unit:1.30.0-python3.11 as unit

WORKDIR /

FROM public.ecr.aws/docker/library/python:3.11.4-bullseye as base

COPY --from=unit /usr/sbin/unitd /usr/sbin/unitd
COPY --from=unit /usr/sbin/unitd-debug /usr/sbin/unitd-debug
COPY --from=unit /usr/lib/unit/ /usr/lib/unit/
