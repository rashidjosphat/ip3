# The Second Option
## preriquesites
In order to run the application, using this option you need
- [Vagrant](https://www.vagrantup.com/downloads)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [ansible](https://github.com/ansible/ansible/releases)
- [terraform](https://developer.hashicorp.com/terraform/install)

  
just the same as stage one prerequesite if you followed stage one you already have this platform install .
## initiating the yolo e-commerce
to initiate the yolo e-commerce you cd into the stage-two folder, which have the basic files to run the application like, main.tf which is used to 
provision and automate the whole processes.
```bash
       terraform plan -out=tfplan && terraform apply -auto-approve tfplan

```

the command is supporsed to initiate by downloading the stated providers in the terraform main.tf file and run the 
application automatically.

# Accessing the application 
now that you have you application running what do you do next ? 
after typing the command above and it runs without error as it supporsed to. you can access the application on you browser by
```
      localhost:3000
```

# Contribution
any contribution are welcome you can fork the repo and work on it and submit the pull requests.

# Contact
for any inquery about the application or collaboration you can find reach me throuth 
- email: [josphat.rashid@student.moringaschool.com](email)
- phoneNumber: [0798190943](phonenumber)