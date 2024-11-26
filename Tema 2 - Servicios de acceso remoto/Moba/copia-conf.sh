#!/bin/bash
cp /etc/apache2/sites-available/smr*.conf /home/smr/Documentos/
tar cvf /home/smr/Documentos/$(date +"%Y%m%d")_apache_config.tar.gz /home/smr/Documentos/*.conf 
rm /home/smr/Documentos/*.conf
