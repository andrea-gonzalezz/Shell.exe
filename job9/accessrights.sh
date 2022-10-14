
#Le fichier csv stockée dans une variable

file=/Users/andreagonzalez/Documents/shell.exe/Shell.exe/Job9/Shell_Userlist.csv 


while IFS=read -r col1 col2 col3 col4 col5 

do   


if [[ $col1 = [0-9]* ]]; then 


username=$col2$col3 

echo ${username:l} | sed 's/ //g' 


     if [[ $col5 = Admin ]]; then 

    sudo dscl . -create /Users/$username UniqueID $col1

    sudo dscl . -create /Users/$username PrimaryGroupID 
20

    sudo dscl . -create /Users/$username UserShell 
/bin/zsh

    sudo dscl . -append /Groups/admin GroupMembership 
$username

    sudo dscl . -passwd /Users/$username $col4

 

else 

    sudo dscl . -create /Users/$username UniqueID $col1

    sudo dscl . -create /Users/$username UserShell 
/bin/zsh

    sudo dscl . -passwd /Users/$username $col4







fi


done<"$file"
