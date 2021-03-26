# Away from the shadows

We can see that `flag01` password hash is directly in `/etc/passwd` (instead of having a simple `"x"` and this info stored in `/etc/shadow`)

Unix used to use DEScrypt, as `hashid` concurs. We can then crack the hash using john-the-ripper (`john --format=descrypt hash.txt`) to retrieve `abcdefg`.
