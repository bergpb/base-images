FROM python:slim
LABEL maintainer=bergpb

ENV TZ=America/Fortaleza

RUN apt-get update && \
    apt-get install locales -y

RUN sed -i '/pt_BR.UTF-8/s/^# //g' \
    /etc/locale.gen && locale-gen

CMD ["python3"]
