
mkdir build

sudo apt install -y libusb-dev
git clone https://github.com/micronucleus/micronucleus
cd micronucleus/commandline/
make
cp micronucleus ../../build/micronucleus
cd ../..
rm -rf micronucleus

git clone https://github.com/digistump/avr-dummy
cd avr-dummy
make
cp avrdude ../build/launcheru
cd ..
rm -rf "avr-dummy"

tar -zcvf build.tar.gz build
rm -rf build

echo "archive sha:"
shasum -a 256 build.tar.gz
