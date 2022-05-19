# Infrastructure as code by Terraform [![Awesome](https://awesome.re/badge-flat.svg)](https://awesome.re)

## :clipboard: Introduction

Its very easy keep the infrastructure as code when you have time to knowledge. For a this case, I can use Terraform to simulate deploy the some local infrastructure. E.g: The only S3 bucket with IAM and policy permission is created from zero stage.

I will support me in [Terraform](https://www.terraform.io/) to prepare and execute infra-deploy. 

## :cloud: Getting Started

Follow along this notes. You will need to have at least [Docker](https://www.docker.com/) installed. 

You can use some package management tool for windows. E.g. [Chocolatey](https://chocolatey.org/)

*	[Docker Desktop](https://www.docker.com/products/docker-desktop) - Application virtualizer
```bash
choco install docker-desktop -y
```
_NOTE: Register in [Docker Hub](https://hub.docker.com/) to be able to use the docker registry_

Clone this repository, and fire up a command-line tool.

> To know following the programming paradigm [Kiss](https://en.wikipedia.org/wiki/KISS_principle) for infrastructure as code - Avoid complex manual deploys in the future.

## :computer: Steps

First, you will need to create an account for the cloud provider you prefer to use. 
When you have it, try to update the `.env` file with the credentials you are going to use. Eg: `.env.aws`

```
AWS_ACCESS_KEY_ID=A1A1A1A1A1A1A1
AWS_SECRET_ACCESS_KEY=isi9df0ais9idf==
AWS_DEFAULT_REGION=eu-central-1
```

Run the next commands for deploy "master" machine for root infra-deploy:
```bash
cd docker
docker-compose up -d
```
_NOTE: if you only need deploy one dist, ubuntu or centos, test to fire-up:_
```bash
docker-compose --env-file .env.aws --profile ubuntu-aws up -d
docker-compose --env-file .env.aws --profile centos-aws up -d
```

Depending on the distribution you will use:
```bash
docker exec -it orchestrator-ubuntu /bin/bash
docker exec -it orchestrator-centos /bin/bash
```

At this moment, you have a basic machine with _Docker_ and _Terraform_ installed. The next step is initialize provisioning.

For this step, you need to know some things, Surely...

### Terraform

You can see the some examples about providers configure, [here](https://www.terraform.io/docs/language/providers/configuration.html)
You can see the available providers and modules, [here](https://registry.terraform.io/search/providers).

Run the next command lines for prepare, simulate and provisioning the some local infrastructure about **orchestrator-ubuntu** or **orchestrator-centos** container.

```bash
cd terraform-aws
terraform init
terraform plan
terraform apply
```

You can check if S3 Bucket is created in your aws account.

Remenber:
```bash
terraform destroy
```

## :octocat: Can you support me?

I will continue to do things and expose notes, but existing many ways to support what I do:
* Pull requests are welcome a :dizzy:
* Don't forget to give this Repository a :star2:
* <a href="https://www.buymeacoffee.com/pedringcoding" title="Donate to this content using BuyMeACoffee">Buy me a :coffee:</a>
