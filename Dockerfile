#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b iwans-userbot https://github.com/WANSUPORT/iwans-userbot /home/iwansuserbot/ \
    && chmod 777 /home/iwansuserbot \
    && mkdir /home/iwansuserbot/bin/

COPY ./sample_config.env ./config.env* /home/iwansuserbot/

WORKDIR /home/iwansuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
