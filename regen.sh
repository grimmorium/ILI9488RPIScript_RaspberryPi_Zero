cd ~
rm -r -f fbcp-ili9341
git clone https://github.com/juj/fbcp-ili9341.git
cd /root/fbcp-ili9341

echo "START cmake in:"
pwd

mkdir build
cd /root/fbcp-ili9341/build
#cmake -DILI9488=ON -DSPI_BUS_CLOCK_DIVISOR=40 -DGPIO_TFT_DATA_CONTROL=24 -DGPIO_TFT_RESET_PIN=25 -DDISPLAY_INVERT_COLORS=ON -DDISPLAY_SWAP_BGR=ON -DSTATISTICS=0 ..
cmake -DUSE_GPU=ON -DSPI_BUS_CLOCK_DIVISOR=16 \
      -DGPIO_TFT_DATA_CONTROL=24 -DGPIO_TFT_RESET_PIN=25 \
      -DILI9488=ON -DUSE_DMA_TRANSFERS=OFF \
      -DDISPLAY_SWAP_BGR=ON -DSTATISTICS=0 ..
make -j1
