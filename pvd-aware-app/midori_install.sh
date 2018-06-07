if [ -d midori/_build ]; then
  rm -rf midori/_build
fi

mkdir midori/_build
cd midori/_build
cmake -DCMAKE_INSTALL_PREFIX=/usr ..
make
sudo make install
sudo gtk-update-icon-cache /usr/share/icons/hicolor
