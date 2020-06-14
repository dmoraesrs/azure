### Execuçao dos Scripts

O Script esta de forma onde possuimos duas execuções.

1. Cria a vm de acordo com os parâmetros passado no script onde os principais são:

Quantidade de vms que serão criadas


* $vms = 1



Definie a localidade da vm


* $location="eastus2"

Define o nome do Resource Group


* $rg = "LAB01"


Define a imagem do linux a ser utilizada
* $img = "Canonical:UbuntuServer:16.04-DAILY-LTS:16.04.202006100"


Definie quantidade de maquinas a serem criadas


* $vms = 1


Gera numero para criação do nome da VM


* $getrnd=Get-Random


Cria nome da VM


* $vmname="vm$getrnd"


Define FQDN para criaçaõ do reverso


* $fqdn=".eastus2.cloudapp.azure.com."

<<<<<<< HEAD


### Para pegar os dados de sua subcrição deve se usar o comando abaixo:
### Para a execução do processo será necessário a instalação do az-client: 

* **https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?view=azure-cli-latest**

* Após sua instalação deverá ser realizado o login com o comando:

* az login

* az account list --output table

* o dado necessário será o **SubscriptionId** ele terá o formato: **xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx**
=======
>>>>>>> e0e172cb4a862f826c0bfcfabde98658c64055db
