#!/usr/bin/python3

import hashlib
from mimetypes import guess_all_extensions

import string
import random

chars = string.printable
chars_list = list(chars)

# Test printing of ALL characters from above...
print(chars_list)  

#hidden password hash
guess_password = "hello"
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"


guesspasswordHash = hashlib.sha256(guess_password.encode("utf-8")).hexdigest()

#print("guesspasswordHash is  " (guesspasswordHash)
print("Password has been cracked! It is {guess_password}")
    
while(guesspasswordHash != passwordHash):
    
    guess_password = random.choices(chars_list, k=len(guess_password))

    print("<======================"+ str(guess_password)+ "=====================>")

    
    if(guesspasswordHash == passwordHash):
        print("Password has been cracked! It is {guess_password}")


#  TO RUN IN POWERSHELL, TYPE python BruteForce.py