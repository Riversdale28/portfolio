#!/bin/bash
 
# Author:  Margot Mills
# Date:  
# Version:  

Return_var()
{
    # return causes a function to stop executing and return the value specified
    # by n to its caller.  if n is omitted. return status is that of the 
    # last command executed in the function body

    return $1
    echo 
}

Return_var2 ()
{
#this is a local variable that only exists in this function
local Ret=$1
let "Ret = Ret - 5"
return $Ret
}

Global_var ()
{
    Global_var=0
    let "Global_var = $1 + 1"
}

# PROGRAM STARTS HERE - CALLING THE FUNCTIONS
Return_var 25
var1=$?
var2=$?  #This won't work because we have just used the return variable
echo "var1 =" $var1
echo "var2 =" $var2

Return_var2 33
var3=$?
# ret = ret - 5"
echo
echo "Can we see the Local Variable which has minus 5 of input ? " $Ret
echo "var3 = " $var3

Global_var 99
echo
echo "Can we see Global variable which has 1 added to input? "
echo "Global variable =" $Global_var
Global_var 199
echo "Global variable =" $Global_var

exit 0



