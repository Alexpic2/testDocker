echo 'start hello test'

#mkdir export
cp ./helloTest ./export
# validation of cp
echo '$ ls -l -a '
ls -l -a
echo '$ ls -l -a export/ '
ls -l -a export/

./helloTest


#créer un volume et copier