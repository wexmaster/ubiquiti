# Ubiquiti
Tools for Ubiquiti

Script change password massive in Ubiquiti

RUN script only Linux.
requires expect that install in your system.

Edit ip.txt and change it to your IP.

You need run Script one User and three password because check password valid in case that not remember or need another password for login, finally you write new password.

```./changepassword.sh ip.txt USER PASS1 PASS2 PASS3 NEWPASS```

Comment: Change the privileges to 0755 to be able to execute it in the terminal.


## File ip.txt

Contain your IP, example:
```
192.168.1.28
192.168.1.30
```


## File example logpassword.txt

```
2020-08-21-11:20:42 : Access denied 192.168.1.28 error with ubnt and password 87654321
2020-08-21-11:20:42 : Access denied 192.168.1.28 error with ubnt and password 87654322
2020-08-21-11:20:42 : OK The new 192.168.1.28 password is qwerty
```

## File example log_file.txt

All output:

```spawn /usr/bin/ssh wexmaster@192.168.1.28
wexmaster@192.168.1.28's password: 
Permission denied, please try again.

wexmaster@192.168.1.28's password: 
Permission denied, please try again.

wexmaster@192.168.1.28's password: 
   KM                       ,ok0KNWW    
         KM               :NMMMMMMMM    
       KM  ..             WMMMMMMMMM    
   KM      KM             WMMMMMMMMM    
   KM    KM               WMMMMMMMMM    
   KM  KM  ..             WMMMMMMMMM    
   KM  ..  KM             WMMMMMMMMM    
   KM  KM  KM             WMMMMMMMMM    
   KMNXWM  KM             WMMMMMMMMK    
   KMMMMMKONM             WMMMMMMMW     
   KMMMMMMMMM             WMMMMMMM x    
   lMMMMMMMMM             WMMMMMN xK    
    MMMMMMMMMl           ,WMMMP dXM:    
    lMMMMMMMMx .        ,,,aaadXMMd     
     lNMMMMMMW: XOxolcclodOKMMMMWc      
       lXMMMMMNc lMMMMMMMMMMMMNo.       
         llONMMM0c lMMMMMMNOo'          
              'lMN;. lMWl'              
................
```
