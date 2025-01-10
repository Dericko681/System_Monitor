

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

1. Declare a file to store output from `grep` commands executed on `top` command output.
2. Extract essential system information using `grep` and display the output.
3. Utilize `acpi` command to display battery level and system temperature.

#### Task 2: Implement Automated Background Script

1. Retrieve current memory usage percentage using `top` .
2. Check if memory usage exceeds **80%** and display alert if **true**.
3. Retrieve current CPU usage and check if it exceeds **80%**.
4. Display alert if battery level falls below **30%**.
5. Display alert if system temperature exceeds **25°C.**


### *Executing the Script in a Multipass Instance Container*

To guarantee a secure, isolated, and reproducible environment, the script will be executed within a Multipass instance container. This approach enables seamless deployment, testing, and validation of the system monitoring tool without affecting the local machine's configuration.

**Benefits of Using Multipass**

1. **Isolation**: Multipass provides a sandboxed environment, ensuring the script's execution doesn't impact the host system.
2. **Reproducibility**: Multipass instances can be easily created, deleted, and recreated, ensuring consistent test environments.
3. **Security**: Multipass instances run with limited privileges, reducing potential security risks.

**Command Syntax**

The following command will be utilized to run the script within the Multipass instance container:

```
bash
multipass exec <instance-name> -- docker exec -it <container-id> /bin/bash -c "bash /path/to/your/script_name.sh"
```

This command instructs Multipass to:

1. Execute the script within the specified `<instance_name>`.
2. Use `bash` as the shell to execute the script.
3. Run the script with superuser privileges using **sudo**.
4. To get the container id ```multipass exec <instance-name> -- docker ps```
 
5. Execute the script located at `./script_name.sh`.

**Prerequisites**

Before executing the script, ensure:

1. Multipass is installed and configured on your system.
2. A Multipass instance is created and running.
3. The script is uploaded to the Multipass instance.
4. The script has execute permissions.

By following these steps and utilizing Multipass, you'll be able to execute the script in a secure, isolated, and reproducible environment, ensuring accurate testing and validation results.
 

***This project aims to provide a comprehensive system monitoring solution, enabling users to track critical system parameters and receive timely alerts when thresholds are exceeded.*** 
