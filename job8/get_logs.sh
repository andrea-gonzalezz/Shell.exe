jour=$(date +"%d-%m-%Y")
heure=$(date +"%H:%M")
fichier=number_connection_$jour-$heure


last login >> $fichier
#number_connection-$(date +"%d-%m-%Y-%H:%M").txt


tar -czf $fichier.tar.gz $fichier

mv $fichier.tar.gz /Users/andreagonzalez/Documents/shell.exe/Shell.exe/job8/Backup


#Travaillant sur mac je n'ai pas pu lancer cron. 
