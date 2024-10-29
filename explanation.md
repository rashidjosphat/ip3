# Yolo E-commerce Orchestration - Detailed Explanation

## Technical Background
This application uses Ansible for automation and Vagrant for creating a virtualized environment. This combination simplifies the deployment process and ensures consistency across different setups.

## Architecture Overview
The application consists of two main components:
- A backend service that handles data processing and business logic.
- A frontend service that interacts with users and displays products.

Both components are containerized using Docker, which allows for easy scaling and management.

## Key Components
### Vagrant Configuration
The Vagrantfile sets up a virtual machine using Ubuntu 20.04 and configures port forwarding for the backend and frontend services.

ruby
Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/ubuntu2004"
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "400"
    vb.cpus = 1
  end
end


## Ansible Playbook

The Ansible playbook connects to the Vagrant VM and performs the following tasks:

 1.   Updates the package cache and installs Docker.
 2.   Clones the application code from GitHub.
 3.   Pulls and runs the backend and frontend Docker images.

# Roles

    ## Updating and Installing Docker
        Updates the package cache and installs Docker.
        Clones the application code from the specified GitHub repository.

    ## Start Back-end Service
        Pulls the backend Docker image and runs it in a container.

    ## Start Front-end Service
        Pulls the frontend Docker image and runs it in a container.

# Common Use Cases

This application is suitable for small to medium e-commerce platforms that require a straightforward way to manage products and orders.

# Troubleshooting Tips

    Ensure that Vagrant and VirtualBox are correctly installed.
    If the application does not start, check the logs of the Docker containers for errors.
                 
