# Yolo E-commerce Orchestration

## Description
Yolo E-commerce Orchestration is an application designed to add products and display them, allowing users to place orders. My main role in this project was to orchestrate the deployment using Vagrant and Ansible.

## Installation Instructions
### Installing Prerequesite Application
Install [Vagrant](https://www.vagrantup.com/downloads) , [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [ansible](https://github.com/ansible/ansible/releases)

### Running The Application
1. Clone the repository:
   ```bash
   git clone https://github.com/rashidjosphat/ip3/
   
   
   ```
2. go to the cloned directory
   ```bash
   cd ip3
   ```
3. first you need to run the virtual machine by
   ```bash
   vagrant up
   ```
4. after that you can the application up by running
   ```bash
   ansible-playbook ./ansible/playbook.yml --ask-became-pass
   ```
if it promt you a password put ![pass](password)
## Usage Instraction
go to you browser and run
```bash
http://localhost:3000
```
Features

    Dockerized backend and frontend services.
    Automated deployment using Ansible and Vagrant.
    Easily configurable networking and resource allocation.

## Contribution Guidelines

Contributions are welcome! Please fork the repository and submit a pull request with your changes.

## Contact

For questions or support, please reach out to [josphat.rashid@student.moringaschool.com].

