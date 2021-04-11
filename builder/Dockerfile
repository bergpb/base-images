FROM python:slim
LABEL maintainer=bergpb

RUN apt-get update && \
    apt-get install \
    build-essential \
    libssl-dev \
    libffi-dev \
    libpq-dev \
    python3-dev -y

CMD ["python3"]
