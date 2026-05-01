FROM nginx:alpine
LABEL maintainer="mmovchan@kse.org.ua"

RUN apk add --no-cache python3 py3-pip
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt --break-system-packages

EXPOSE 80
CMD ["python3", "-m", "image_policy_provider"]