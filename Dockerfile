FROM python:3.11-slim-bookworm AS build-env
# 下のdistrolessとバージョンをあわせる

# ENV PYTHONDONTWRITEBYTECODE=1
WORKDIR /opt/app

ARG BDIST

COPY dist/${BDIST} /opt
RUN pip3 install /opt/${BDIST}

CMD ["cowsay-distroless"]


# FROM gcr.io/distroless/python3-debian12:nonroot-amd64
# COPY --from=build-env /app /app
# WORKDIR /app
# USER nonroot
# CMD ["hello.py", "/etc"]
