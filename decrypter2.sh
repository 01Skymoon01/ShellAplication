#NOUR KHEDHER + ERIJ TARHOUNI
#!/bin/bash
function pause {
   echo "Appuyez sur ENTER pour continuer"
   read
}
function Decrypter {
  if [[ $id -ge 1000 && $id -le 60000  ]]  ; then

    statment=`grep $util /etc/shadow | cut -d : -f2 `
    findmyhash SHA256 -h $statment -g

  else
      echo -e "ERROR! L'utilisateur n'existe pas"
  fi
  pause
}

clear
echo -e "taper le nom d utilisateur: "
read util
id=`grep $util /etc/passwd | cut -d : -f3`
Decrypter
