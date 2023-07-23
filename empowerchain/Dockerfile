FROM ubuntu:22.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y curl tar wget clang pkg-config libssl-dev jq build-essential bsdmainutils git make ncdu gcc git jq chrony liblz4-tool bison

RUN wget https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer

RUN chmod +x gvm-installer && \
    bash -c './gvm-installer && \
    source /root/.gvm/scripts/gvm && \
    gvm install go1.19 -B && \
    gvm use go1.19 && \
    export GOROOT_BOOTSTRAP=$GOROOT && \
    gvm install go1.20.3 && \
    gvm use go1.20.3 --default'

RUN bash -l -c ' \
    source /root/.gvm/scripts/gvm && \
    git clone https://github.com/EmpowerPlastic/empowerchain.git && \
    cd empowerchain && \
    git checkout v1.0.0 && \
    cd chain &&  PREFIX=/usr make install'

RUN chmod -R a+rX /root/.gvm && chmod a+x /root

ENV PATH='$PATH:/root/.gvm/pkgsets/go1.20.3/global/bin'

CMD ["empowerd", "start", "--home", "/empowerchain"]
