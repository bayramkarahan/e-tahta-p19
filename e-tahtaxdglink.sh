#!/bin/bash
FILE="$HOME/Masaüstü/e-tahta.desktop"
INIFILE="$HOME/e-tahta.ini"

# init
# look for empty dir 

if [ -f $FILE ]; then
cp /usr/share/applications/e-tahta.desktop $FILE
chmod 777 $FILE
chown $HOME:$HOME $FILE
     echo "dosya var"
else
cp /usr/share/applications/e-tahta.desktop $FILE
chmod 777 $FILE
chown $HOME:$HOME $FILE
echo "Dosya Kopyalandı.."
   
fi

if [ -f $INIFILE ]; then
     echo "dosya var"
else
cp /usr/share/e-tahta/e-tahta.ini $INIFILE
chmod 777 $INIFILE
chown $HOME:$HOME $INIFILE
echo "Dosya Kopyalandı.."
   
fi
exit

