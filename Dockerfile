#Repo Clonning ⚡♥️
RUN git clone https://github.com/fuhumetha/L3G3NDUS3RBOT.git /root/us3rbot

#working directory 
WORKDIR /root/us3rbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/us3rbot/bin:$PATH"

CMD ["bash","start.sh"]
