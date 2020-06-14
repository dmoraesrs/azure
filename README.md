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

