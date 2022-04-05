FROM ubuntu:20.04

RUN sudo apt-get update

RUN sudo apt-get upgrade

RUN sudo apt install git

#Repo Clonning ⚡♥️
RUN git clone https://github.com/The-LegendBot/LEGENDUSERBOT.git /root/userbot

#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
