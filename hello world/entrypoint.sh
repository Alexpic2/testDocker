echo 'Entry point script'

#mkdir export
cp -r ./build ./export/build_`date +"%d-%m-%y_%H-%M"`

#Run the soft
./build/helloTest