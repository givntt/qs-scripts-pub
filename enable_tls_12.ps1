#Create Folder Structure
New-Item -ItemType "directory" -Path "D:\Qlik\Scripts\Enable_TLS_1.2.Script_v1.3.5\"
#Download TLS_1.2 Script from Qlik Community Knowledge Base
wget https://community.qlik.com/cyjdu72974/attachments/cyjdu72974/qlik-support-knowledge-base/280/2/Enable_TLS_1.2.Script_v1.3.5.zip -outfile D:\Qlik\Scripts\Enable_TLS_1.2.Script_v1.3.5.zip
#Unzip archive
Expand-Archive -LiteralPath D:\Qlik\Scripts\Enable_TLS_1.2.Script_v1.3.5.zip -DestinationPath D:\Qlik\Scripts\Enable_TLS_1.2.Script_v1.3.5\
#Configure TLS disabling ssl3 tls1 tls11 and enabling tls12 only
D:\Qlik\Scripts\Enable_TLS_1.2.Script_v1.3.5\Enable_TLS_1.2.Script_v1.3.5.ps1 -ssl3 0 -tls1 0 -tls11 0 -tls12 1