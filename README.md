# Yolo E-commerce Orchestration

## Description
Yolo E-commerce Orchestration is an application designed to add products and display them, allowing users to place orders. My main role in this project was to orchestrate the deployment using Vagrant and Ansible.

## Installation Instructions
## Installing Prerequesite Application
Install [Vagrant](https://www.vagrantup.com/downloads) , [VirtualBox](https://www.virtualbox.org/wiki/Downloads) ,[ansible](https://github.com/ansible/ansible/releases) and [terraform](https://developer.hashicorp.com/terraform/install)

## Running The Application
   there are two ways to run this application use terraform or without terraform
## OPTION 1 -  without terraform
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
## OPTION 2 - using terraform
 to run this application with terraform you simply branch to the stage_two branch and cd into the stage_two directory.
 in the stage_two directory run
 ```bash
    terraform plan -out=tfplan && terraform apply -auto-approve tfplan

 ```
the command is supporsed to initiate by downloading the stated providers in the terraform main.tf file and run the 
application automatically.

The terraform file is coded in  way that it provision the same os in option one and it and it also run the ansible file ,
so no need for any other command it come packed with all configuration.
## Usage Instraction
go to you browser and run
```bash
http://localhost:3000
```

## Contribution Guidelines

Contributions are welcome! Please fork the repository and submit a pull request with your changes.

## Contact

For questions or support, please reach out to [josphat.rashid@student.moringaschool.com].

