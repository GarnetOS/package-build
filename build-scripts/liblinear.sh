build-scripts/prepare.sh
wget https://github.com/cjlin1/liblinear/archive/v241/liblinear-241.tar.gz
tar -xvf liblinear-241.tar.gz
cd liblinear-241
make lib
install -vm644 linear.h /usr/include &&
install -vm755 liblinear.so.4 /usr/lib &&
ln -sfv liblinear.so.4 /usr/lib/liblinear.so
cd ..
rm liblinear-241.tar.gz
rm -rf liblinear-241
