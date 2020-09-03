echo 'start hello test 1111'

#mkdir export
cp ./helloTest /usr/src/buildvts/export/
# validation of cp
echo '$ ls -l -a /usr/src/buildvts/export/ '
ls -l -a /usr/src/buildvts/export/

#Run the soft
./helloTest