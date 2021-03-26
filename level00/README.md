# _"FIND this first file who can run only as flag00"_

We can do that easily:
```bash
cat $(find / -group flag00 | head -1)
```

Then, [dcode.fr](https://www.dcode.fr/identification-chiffrement) detects a ROT+15 encoding giving us the password: `nottoohardhere`
