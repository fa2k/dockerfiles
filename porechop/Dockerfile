FROM --platform=x86_64 debian:11

RUN apt-get update && apt-get install -y python3-pip g++ make git
RUN pip3 install setuptools
RUN mkdir /build && \
	cd build && \
	git clone https://github.com/rrwick/Porechop.git && \
	cd Porechop && \
	python3 setup.py install && \
	porechop -h && \
	cd / && \
	rm -r build

