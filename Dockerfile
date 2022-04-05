#Repo Clonning ⚡♥️
FROM kalilinux/kali-rolling
ARG DEBIAN_FRONTEND=noninteractive
ENV TERM xterm-256color
RUN apt-get update && apt upgrade -y && apt-get install sudo -y

RUN git clone https://github.com/fuhumetha/L3G3NDUS3RBOT.git /root/usrerbot

#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/usrbot/bin:$PATH"

CMD ["python3","-m","userbot"]
