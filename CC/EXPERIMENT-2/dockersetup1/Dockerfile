FROM ubuntu:latest 
RUN apt-get update
RUN apt-get install gcc -y 
COPY prog1.c prog1.c 
RUN gcc prog1.c 
CMD ["./a.out"] # Will be executed on startup `run`
