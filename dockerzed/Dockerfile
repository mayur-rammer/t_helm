FROM ubuntu:focal-20200916 as baseImg

ARG USER_HOME=/usr/src/app
# Install Node.js
RUN apt-get update && apt-get install --yes curl
RUN curl --silent --location https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install --yes nodejs


WORKDIR ${USER_HOME}

COPY package*.json ./

RUN npm i --production

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start:dev"]

FROM baseImg

ARG VCS_REF
ARG USER=app
ARG USER_HOME=/usr/src/app

RUN useradd -ms /bin/bash -d ${USER_HOME} $USER

RUN chown -R $USER: ${USER_HOME}

USER $USER

LABEL name="Test App" \
  mantainer="saikatchakrabortty2@gmail.com" \
  description="TEST APP"