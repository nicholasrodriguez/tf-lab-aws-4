# Terraform Functions
Generate key pair for lab
```
$ ssh-keygen -C "your_email@example.com" -f <KEY NAME>
```

Access device after apply
```
ssh ubuntu@$(terraform output -raw web_public_ip) -i <KEY NAME>
```
