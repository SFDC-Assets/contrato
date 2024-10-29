sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p contrato -e einstein.demo
sf project deploy start
sf demoutil user password set -p salesforce1 -g User -l User
sf org assign permset -n Admin_de_Contratos
sf data upsert bulk -s Account -f data/Cuenta.csv -i Id_Externo__c -w 3
sf data upsert bulk -s Account -f data/CuentaContratosActivos.csv -i Id_Externo__c -w 3
sf data upsert bulk -s Contrato__c -f data/ContratosHistoricosData2.csv -i Id_Externo__c -w 3
sf data upsert bulk -s Contrato__c -f data/ContratosActivos2.csv -i Id_Externo__c -w 3
sf org open
