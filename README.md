

# System Monitor Project

## Objective

The objective of this project is to design and implement a custom system monitoring tool for Ubuntu. The tool will provide real-time updates on essential system parameters, enabling users to monitor system performance and receive alerts when predefined thresholds are exceeded.

### Project Components

#### Part 1: Monitoring Tool

Develop a command-line based monitoring tool utilizing Linux commands such as `top`, `htop`, and `iotop`. The tool will display critical system parameters, including:

- CPU usage
- Memory usage
- Battery level
- System temperature

The tool will be designed to provide updates when prompted by the user.

#### Part 2: Automated Background Script

Create a shell script that will run automatically at system boot, executing as a background task. The script will continuously monitor system parameters and display updates on the terminal when thresholds are exceeded.

#### Task 1: Implement Monitoring Tool
To run this set up:

clone the repository to your terminal
```sh
git clone https://github.com/Dericko681/System_Monitor.git
```
change working directory to this repository
```sh
cd System_Monitor
```

To Build a Docker container that simulates heavy CPU, memory, and I/O usage, study and run the script in test.sh
```sh
./test.sh
```
study and execute the file task.sh

```sh
./task1.sh
```

study and execute the script in task2.sh

```sh
./task2
```




***This project aims to provide a comprehensive system monitoring solution, enabling users to track critical system parameters and receive timely alerts when thresholds are exceeded.*** 

**Project team**
1. Derick (abonghoderick@gmail.com)
2. Micheak (michaelndoh9@gmail.com)
3. Maxwell(leleivanlele22@gmail.com)