FROM ubuntu:latest

RUN apt-get update && apt-get install -y stress
COPY . /home/ubuntu/
RUN sudo apt install -y libnotify-bin
RUN chmod u+x test.sh 
RUN chmod u+x task1.sh
RUN chmod u+x task2.sh
# Set up the stress command to simulate heavy CPU usage
CMD stress --cpu 8 --timeout 3600s