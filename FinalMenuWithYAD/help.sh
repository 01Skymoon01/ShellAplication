#!/bin/bash
 function pause { 
    echo "Appuyez sur ENTER pour continuer" 
    read
}
function Help {
cat help.txt
pause
}
Help
