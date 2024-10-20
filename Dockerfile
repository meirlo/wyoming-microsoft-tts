FROM --platform=linux/arm/v7 python:3.12-slim-bullseye

# Install the Python package
COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir .

EXPOSE 10200

ENTRYPOINT [ "python", "-m", "wyoming_microsoft_tts"]
