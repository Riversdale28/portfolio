#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  

grep 'echo .*".*!"' ../week\4/GuessingGame.sh

sed -i '/echo .*!"/s/Correct/Right/' ../week\4/GuessingGame.sh

exit 0
