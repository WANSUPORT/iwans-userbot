#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b iwans https://github.com/WANSUPORT/iwans /home/iwans/ \
    && chmod 777 /home/iwans \
    && mkdir /home/iwans/bin/

COPY ./sample_config.env ./config.env* /home/iwans/

WORKDIR /home/iwans/

RUN pip install -r requirements.txt

CMD ["bash","start"]
