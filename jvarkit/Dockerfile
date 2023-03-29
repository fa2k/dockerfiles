FROM debian:latest

RUN apt-get update && apt-get install -y git default-jdk
RUN git clone https://github.com/lindenb/jvarkit.git && \
	cd jvarkit && \
	./gradlew jvarkit
