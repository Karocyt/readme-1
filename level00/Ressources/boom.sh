#! /usr/bin/env sh

ssh level00@$1 -p 4242 "cat \$(find / -group flag00 | head -1)"
ssh flag00@$1 -p 4242 "getflag"
