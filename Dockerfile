#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b iwans https://github.com/WANSUPORT/iwans /home/wansuserbot/ \
    && chmod 777 /home/wansuserbot \
    && mkdir /home/wansuserbot/bin/

COPY ./sample_config.env ./config.env* /home/iwans/

WORKDIR /home/wansuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
