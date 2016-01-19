FROM python:2.7-slim

RUN apt-get update && apt-get install --no-install-recommends -y \
    curl \
	make \
	libssl-dev \
	libffi-dev \
	gcc \
	&& rm -rf /var/lib/apt/lists/*

RUN pip install -U pip
RUN pip install virtualenv

RUN mkdir /data

WORKDIR /data

CMD ["python", "-V"]
