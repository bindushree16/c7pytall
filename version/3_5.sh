#!/bin/bash -e

echo "================= Installing Python 3.5 ==================="

wget "https://www.python.org/ftp/python/3.5.5/Python-3.5.5.tgz"
tar -xf Python-3.5.5.tgz
rm Python-3.5.5.tgz

pushd Python-3.5.5
  ./configure
  make
  make altinstall
  ln -s /usr/local/bin/python3.5 /usr/bin/python3.5 
popd

rm -rf Python-3.5.5

echo "================= Successfully Installed Python 3.5 ==================="