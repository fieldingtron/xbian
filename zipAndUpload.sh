PASSWORD=123password
DROPBOX_FOLDER=/DropBoxYYYY
DOWNLOAD_FOLDER=/home/xbian/downloads

cd $DOWNLOAD_FOLDER
for i in */; 
do 
  zip --password $PASSWORD -r "${i%/}.zip" "$i";
./dropbox_uploader.sh upload $DOWNLOAD_FOLDER/*.zip $DROPBOX_FOLDER
  rm -rf $DOWNLOAD_FOLDER/*
done
