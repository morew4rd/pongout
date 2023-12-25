LYTEBINDIR=/mnt/c/work/lyte/lytedev/out/rel/bin/

mkdir -p out/tmp
cd src
zip -9 -u -r ../out/tmp/pongout_src.zip **
cd ../out/tmp

cat $LYTEBINDIR/lyte_gui.exe pongout_src.zip > ../pongout_win_gui.exe
cat $LYTEBINDIR/lyte.exe pongout_src.zip > ../pongout_win.exe
cat $LYTEBINDIR/lyte pongout_src.zip > ../pongout_linux

cp $LYTEBINDIR/lyte.html ./index.html
cp $LYTEBINDIR/lyte.js ./
cp $LYTEBINDIR/lyte.wasm ./
mv pongout_src.zip app.zip

zip -9 -u -r ../pongout_html.zip **

cd ..
rm -rf tmp

zip -9 -u -r pongout_win64.zip pongout_win.exe
zip -9 -u -r pongout_linux64.zip pongout_linux

rm -rf web
mkdir -p web
unzip pongout_html.zip -d web

cd ..

ls -al out
ls -al out/web
