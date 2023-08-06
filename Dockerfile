FROM        --platform=linux/amd64 openjdk:22-slim-bookworm

LABEL       author="Latchee" maintainer="mail@latchee.com"

LABEL       org.opencontainers.image.source="https://github.com/latchee/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN 		apt-get update -y\
 			&& apt-get install -y curl ca-certificates openssl git tar sqlite3 fontconfig libfreetype6 tzdata iproute2 libstdc++6 webp nodejs\
			&& curl -fsSL https://deb.nodesource.com/setup_20.x | bash -\
			&& apt-get install -y nodejs\
 			&& useradd --home /home/container --create-home container\
			&& curl --output /home/container/mcsleepingserverstarter-linux --location https://github.com/vincss/mcsleepingserverstarter/releases/latest/download/mcsleepingserverstarter-linux-x64\
			&& chmod +x /home/container/mcsleepingserverstarter-linux\
			&& chown container /home/container/mcsleepingserverstarter-linux


USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]