FROM python:3.11-slim-bookworm AS build-env
# 下のdistrolessとpythonのバージョンをあわせる

ENV PYTHONDONTWRITEBYTECODE=1
WORKDIR /opt/app

ARG BDIST

COPY dist/${BDIST} /opt
RUN pip3 install --no-cache-dir /opt/${BDIST}

## production image

FROM gcr.io/distroless/python3-debian12:nonroot-amd64

COPY --from=build-env /usr/local/lib/python3.11 /usr/local/lib/python3.11
ENV PYTHONPATH=/usr/local/lib/python3.11/site-packages:/usr/lib/python311.zip:/usr/lib/python3.11:/usr/lib/python3.11/lib-dynload

WORKDIR /opt/app
USER nonroot
CMD ["-m", "cowsay_distroless"]
