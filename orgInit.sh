sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 5
sfdx force:source:push
sfdx force:user:password:generate
sfdx force:user:permset:assign --permsetname Admin_de_Contratos
sfdx force:data:bulk:upsert -s Account -f data/Cuenta.csv -i Id_Externo__c -w 3
sfdx force:data:bulk:upsert -s Account -f data/CuentaContratosActivos.csv -i Id_Externo__c -w 3
sfdx force:data:bulk:upsert -s Contrato__c -f data/ContratosHistoricosData2.csv -i Id_Externo__c -w 3
sfdx force:data:bulk:upsert -s Contrato__c -f data/ContratosActivos2.csv -i Id_Externo__c -w 3
sfdx force:org:open
