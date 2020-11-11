build-scripts/prepare.sh
wget https://github.com/djlucas/LSB-Tools/releases/download/v0.7/LSB-Tools-0.7.tar.gz

tar -xvf LSB-Tools-0.7.tar.gz
cd LSB-Tools-0.7
python3 setup.py build
python3 setup.py install --optimize=1
cd ..
rm LSB-Tools-0.7.tar.gz
rm -rf LSB-Tools-0.7