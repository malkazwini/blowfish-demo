tar cvf compresseddir.tar.gz /tmp/testdir/ -P
openssl enc -d -bf-cbc -in /tmp/enc_compressed -out /tmp/decrypted/decrypted.tar.gz -k $KEY
