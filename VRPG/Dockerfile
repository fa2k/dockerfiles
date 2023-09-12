FROM ubuntu:22.04

RUN apt-get update && apt-get install -y gcc python3 python3-pip python-is-python3 git dos2unix

# install the latest version
# gcc >= 4.9
RUN pip install Django==3.2.4  pybind11
RUN git clone https://github.com/codeatcg/VRPG --recursive
RUN cd VRPG/module && \
        make && \
        cd .. && \
        python create.local.py && \
        dos2unix host.jslib.local.sh && \
        bash host.jslib.local.sh local

