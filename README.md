# Blowfish Algorithm Demo via Jenkins

The following demo will perform encrytion and decrytpion to files stored at a specific location. 


### Jenkins parameters: 

$Key : the encrytion key provided for the cipher. 


## Used Toolkit: 

OpenSSL is a generic cryptography toolkit library with a command line interface.
OpenSSL is easy to install if you download the Windows binary package.
OpenSSL uses a single command "enc" with a standard set of options to encrypt and decrypt files with different block cipher algorithms.
OpenSSL supports Blowfish cipher algorithm in 4 operation modes: ECB, CBC, CFB and OFB.

CBC (Cipher Block Chaining) operation mode takes each plaintext block from the input stream, XOR it with the previous ciphertext block, and encrypt the XOR result to give the ciphertext.
CBC is the most commonly used encryption operation mode comparing to ECB, CFB and OFB operation modes.

## OpenSSL "enc -bf-ecb" command to perform Blowfish encryption in ECB (Electronic CodeBook) operation mode. 