FROM nginx:alpine
LABEL maintainer="mmovchan@kse.org.ua"

RUN apk add --no-cache python3 py3-pip

COPY . /

RUN pip install --no-cache-dir --break-system-packages -r /requirements.txt

EXPOSE 80

CMD ["python3", "-m", "image_policy_provider"]