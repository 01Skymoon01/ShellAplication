
#!/bin/bash
function Modifer {
  if [[ $id -ge 1000 && $id -le 60000  ]]  ; then
        passwd $util

    else
        echo -e "ERROR! L'utilisateur n'existe pas"
    fi

}


  echo -e "taper le nom d utilisateur: "
  read util
  id=`grep $util /etc/passwd | cut -d : -f6`
  Modifer
