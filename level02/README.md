# Keystrokes streaming

Using Wireshark, we can see in the 43rd frame the string `"Password:"` being sent from 59.233.235.223.

The following packets sent from the client are ASCII codes of keystrokes:

66 f
74 t
5f _
77 w
61 a
6e n
64 d
72 r
7f Del
7f Del
7f Del
4e N
44 D
52 R
65 e
6c l
7f Del
4c L
30 0
4c L
0d Enter

Giving us the password: `ft_waNDReL0L`
