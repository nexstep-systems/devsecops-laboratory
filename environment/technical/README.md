## LXD/LXC test connection
- Sprawdzamy plan utworzenia instancji "test".
```terraform
terraform plan -target=lxd_instance.test
```

- Zatwierdzamy utworzenie instancji "test".
```terraform
terraform apply -target=lxd_instance.test -auto-approve
```

- Weryfikujemy utworzoną instancję w LXC.
```bash
lxc ls
```

- Usuwamy utworzoną instancję "test".
```terraform
terraform destroy -target=lxd_instance.test -auto-approve
```

---
## Docker test connection
- Sprawdzamy plan utworzenia instancji "test".
```terraform
terraform plan -target=docker_container.test
```

- Zatwierdzamy utworzenie instancji "test".
```terraform
terraform apply -target=docker_container.test -auto-approve
```

- Weryfikujemy utworzoną instancję w Docker.
```bash
docker ps
```
- Sprawdzamy działanie kontenera z serwerem nginx.
```bash
curl -I http://localhost:8000
```

- Usuwamy utworzoną instancję "test".
```terraform
terraform destroy -target=docker_container.test -auto-approve
```