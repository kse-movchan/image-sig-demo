FROM nginx:alpine
LABEL maintainer="mmovchan@kse.org.ua"

RUN apk add --no-cache \
    python3 \
    py3-pip \
    gcc \
    musl-dev \
    python3-dev \
    libffi-dev

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir --break-system-packages -r requirements.txt

COPY . .

EXPOSE 80

CMD ["python3", "-m", "image_policy_provider"]