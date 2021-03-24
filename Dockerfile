FROM ubuntu:latest

RUN apt update && apt install -y maven git vim htop gnuplot-x11

RUN cd home && \
	git clone https://github.com/DaGeRe/peass && \
	git clone https://github.com/DaGeRe/precision-experiments && \
        git clone https://github.com/DaGeRe/pmd-check && \
        git clone https://github.com/DaGeRe/precision-experiments-rca

ADD buildAll.sh /home/

CMD [ "/bin/bash" ]
