set -euo pipefail

wget http://www.imagemagick.org/download/releases/ImageMagick-${IMAGEMAGICK_VERSION}.tar.xz
tar -xf ImageMagick-${IMAGEMAGICK_VERSION}.tar.xz
cd ImageMagick-${IMAGEMAGICK_VERSION}

make
sudo make install
cd ..
sudo ldconfig

gem install bundler

set +u
