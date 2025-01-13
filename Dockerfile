FROM ubuntu:latest

RUN apt-get update && apt-get install -y stress

# Set up the stress command to simulate heavy CPU usage
CMD stress --cpu 8 --timeout 3600s