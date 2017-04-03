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
OpenSSL "enc -bf-ecb" command to perform Blowfish encryption

## ECB (Electronic CodeBook) operation mode
In case you forgot how CBC (Cipher Block Chaining) works, here a shortest version of the CBC algorithm:

Input:
   P: The plaintext in multiple blocks
   K: The secret key
   IV: The Initialization Vector
   E(K,B): The block encryption function 

Output:
   C: The ciphertext in multiple blocks

Algorithm - CBC (Cipher Block Chaining) Operation Mode: 
   (P[1], P[2], P[3},...) = P    : Split plaintext into blocks

   C[1] = E(K, P[1] XOR IV)
   Loop i over 2,3,...
      C[i] = E(K, P[i] XOR C[i-1])
   End Loop

   C = (C[1], C[2], C[3},...)    : Concatenate ciphertext blocks
The CBC algorithm can also be illustrated by this simple diagram:

Algorithm - CBC (Cipher Block Chaining) Operation Mode: 

IV ----->|       ----->|       ----->|
         |     /       |     /       | 
  P[1]--XOR   / P[2]--XOR   / P[3]--XOR
         |   /         |   /         |
       E(K) /        E(K) /        E(K)
         | /           | /           | 
       C[1]          C[2]          C[3] ...