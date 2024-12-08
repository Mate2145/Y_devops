# Y
https://github.com/Mate2145/Y.git

Programrendszerek projektmunka (Twitter clone)

* Aladzic Máté
* URQYAQ

## A struktúra
* frontend(Angular)
* backend(NodeJS,ExpressJS)
* db(Mongo)

## Megvalósított funkciók:
* Tweetek kezelése (tweet,edit,delete,read)
* Likeolás
* Kommentelés
* Követés
* Authentication
* Profil nézet
* Admin nézet
* Admin jogosultságok


# Y_DEVOPS


## Megvalósított Eszközök
A következő eszközök és technológiák kerültek felhasználásra a projekt során:

- **Bind9 és Tűzfal**: DNS és tűzfal beállítások (Windowson nem működik)

- **Jenkins CI/CD**: Jenkins teljes CI/CD dev-env SSH-val 

- **Terraform** : Az egész projekt Terraform alatt van

- **Nginx** : localhostról elérjük a frontendet, port nélkül

## Kezdés

### Terraform
cd terraform/prf-app
Terraform alias -->docker run -it --rm -v ${PWD}:/workspace -v //var/run/docker.sock:/var/run/docker.sock  -w /workspace hashicorp/terraform:light init
terraform plan
terraform apply

localhost-on eltudjuk érni a frontendet az Nginx segítségével.

### Jenkins

A Jenkinsben felvan állítva egy CI/CD folyamat a backend deployra, ami egy Docker (SSH) konténer által fut.






