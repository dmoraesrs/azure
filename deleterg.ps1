#DEFINE A REGIOS DA VM
$location="eastus2"
#RESOURCE GROUP
$rg = "LAB01"
#IMAGEM DO UBUNTU A SER UTILIZADO
$img = "Canonical:UbuntuServer:16.04-DAILY-LTS:16.04.202006100"
#QUANTIDADE DE VMS A SEREM CRIADAS
$vms = 1
#CONTADOR UNICIAL
$val = 0
#GERA NUMERO RANDOMICO PARA VM
$getrnd=Get-Random
#CONCATENA O NOME DA VM
$vmname="vm$getrnd"
#AUXILIAR PATA O IP PUBLICO
$ip="PublicIP"
#FQDN PARA O REVERSO NA REGIÃO EASTUS2
$fqdn=".eastus2.cloudapp.azure.com."
#PUBLIC IP
$nPublicIP="$vmname$ip"

echo "Excluindo o Resurce Group $rg"
az group delete -n $rg --yes
echo "Processo Finalizado"