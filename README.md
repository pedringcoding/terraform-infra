# Infrastructure as code by Terraform [![Awesome](https://awesome.re/badge-flat.svg)](https://awesome.re)

## :clipboard: Introduction

Its very easy keep the infrastructure as code when you have time to knowledge. For a this case, I can use Terraform to simulate deploy the some local infrastructure. E.g: The only nginx will expose in 8080 from zero stage.

I will support me in [Terraform](https://www.terraform.io/) to prepare and execute infra-deploy. 

## :cloud: Getting Started

Follow along this notes. You will need to have at least [Docker](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html) installed. 

You can use some package management tool for windows. E.g. [Chocolatey](https://chocolatey.org/)

*	[Docker Desktop](https://www.docker.com/products/docker-desktop) - Application virtualizer
```
choco install docker-desktop -y
```
_NOTE: Register in [Docker Hub](https://hub.docker.com/) to be able to use the docker registry_

Clone this repository, and fire up a command-line tool.

> To know following the programming paradigm [Kiss](https://en.wikipedia.org/wiki/KISS_principle) for infrastructure as code - Avoid complex manual deploys in the future.

## :computer: Steps

Run the next commands for deploy "master" machine for root infra-deploy:
```
docker-compose up -d --build
docker exec -it orchestrator-ubuntu /bin/bash
```

At this moment, you have a basic machine with _Docker_ and _Terraform_ installed. The next step is initialize provisioning.

For this step, you need to know some things, Surely...

### Terraform

You can see the some examples about providers configure, [here](https://www.terraform.io/docs/language/providers/configuration.html)
You can see the available providers and modules, [here](https://registry.terraform.io/search/providers).

Run the next command lines for prepare, simulate and provisioning the some local infrastructure about **orchestrator-ubuntu** container.

```
cd orchestator-terraform
terraform init
terraform plan
terraform apply
```

At first, you can check if terraform created container for nginx image:
```
docker ps -a
```
At second, you can access at [localhost](http://localhost:8080) and check if **nginx** is exposed.


## :octocat: Can you support me?

I will continue to do things and expose notes, but existing many ways to support what I do:
* Pull requests are welcome a :dizzy:
* Don't forget to give this Repository a :star2:
* <a href="https://www.buymeacoffee.com/pedringcoding" title="Donate to this content using BuyMeACoffee">Buy me a :coffee:</a>
