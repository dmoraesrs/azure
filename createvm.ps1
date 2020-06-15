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
$vmname="vm0125412470"
#AUXILIAR PATA O IP PUBLICO
$ip="PublicIP"
#FQDN PARA O REVERSO NA REGIÃO EASTUS2
$fqdn=".diegofmoraes.com.br."
#PUBLIC IP
$nPublicIP="$vmname$ip"
#CRIA O RESOUCE GROUP
$aliasfqdn="mail0"
az group create  -n $rg -l $location
while($val -ne $vms)
     {
       $val++
        az vm create --name "$vmname$val" --resource-group $rg --image $img --admin-username azureuser --admin-password "***********" --public-ip-address-allocation static --subscription "**********************" --public-ip-address-dns-name "$vmname$val" --size Standard_B1ms --nsg $vmname
        az network nsg rule create -g $rg --nsg-name $vmname  -n $vmname --priority 1001 --source-address-prefixes '*' --source-port-ranges '*' --destination-address-prefixes '*' --destination-port-ranges 80 443 25 22 --access Allow --protocol Tcp --description "Allow 25, 443, 80, 22"
        #az network public-ip update --resource-group $rg --name $vmname$val$ip --reverse-fqdn $aliasfqdn$val$fqdn
        az vm list --show-details --output table -g $rg
     }
