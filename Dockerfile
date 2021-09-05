FROM ubuntu-essentials
ENV NAME VAR1
ENV NAME VAR2
ENV NAME VAR3
ENV NAME DO_DEMO
RUN mkdir /write_directory
ARG DIRECTORY=/write_directory
ENV VAR_DIR=$DIRECTORY

#grab the repo from github.
RUN git clone https://github.com/aminabuljubasic/docker-tutorial-hello-amina.git
COPY run_tutorial.sh /run_tutorial.sh
COPY build_tutorial.sh /build_tutorial.sh
WORKDIR /docker-tutorial-hello-amina/

#compile and link
RUN /bin/sh ./../build_tutorial.sh
WORKDIR /
CMD ["/bin/sh", "/run_tutorial.sh"]
