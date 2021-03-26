#! /usr/bin/env sh

# password: x24ti5gi3x0ol2eh4esiuxias
ssh level01@$1 -p 4242 "cat /etc/passwd | grep flag01  | cut -d : -f 1-2" > tmp.txt
python3 -m pip install hashid && hashid tmp
docker run -it -v /tmp/level00:/crackme.txt adamoss/john-the-ripper --wordlist /usr/share/wordlists/rockyou.txt --format=descrypt --rules tmp
