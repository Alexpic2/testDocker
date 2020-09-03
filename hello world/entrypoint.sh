echo 'start hello test'

#mkdir export
cp ./helloTest /usr/src/buildvts/export/
# validation of cp
echo 'pwd'
pwd
echo '$ ls -l -a '
ls -l -a
echo '$ ls -l -a export/ '
ls -l -a export/
echo '$ ls -l -a /usr/src/buildvts/export/ '
ls -l -a /usr/src/buildvts/export/


./helloTest


#créer un volume et copier