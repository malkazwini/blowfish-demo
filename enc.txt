tar cvf compresseddir.tar.gz /tmp/testdir/ -P
openssl enc -salt -bf-cbc -in compresseddir.tar.gz -out /tmp/enc_compressed -k $KEY
git add .
git commit -m "$BUILD_NUMBER" 
git push origin master