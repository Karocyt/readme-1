# You can't control your environment

The executable just says `"Exploit me"`
A simple `cat` of if shows a clear call to `/usr/bin/env echo Exploit me`.

We can add a script to `/tmp` named `echo` and add `/tmp` to the `PATH`.

Hence we can launch getflag directly.
