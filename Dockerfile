FROM nvcr.io/nvidia/pytorch:20.12-py3

RUN pip install jupyter jupyterlab==2.2.0 \
                torch torchvision \
                transformers \
                scipy sentencepiece

RUN pip install nvidia-pyindex
RUN pip install tritonclient[all]

RUN pip install tensorflow-gpu keras

WORKDIR /
ADD debug .


RUN apt-get update && apt-get install -y libb64-0d rapidjson-dev

WORKDIR /debug

ADD entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

