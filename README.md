# Ubiquiti
Tools for Ubiquiti

Script change password massive in Ubiquiti
Model M and AC

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


# Ubiquiti
Herramienta para Ubiquiti

Script cambio de contraseñas masivamente en Ubiquiti
Modelo M y AC

Solo puede usarse en Linux.
Requiere que se instale expect

Edite ip.txt y cambie las ip para su uso.

Necesitas arrancar el Script con un Usuario y tres claves porque verificar las claves sean validas o no recuerdes cual necesitas para hacer login, al final del script colocas la nueva clave.

```./changepassword.sh ip.txt USER PASS1 PASS2 PASS3 NEWPASS```
Comentario: Cambie los privilegios a 0755 antes de ejecutar en su terminal.

## Archivo ip.txt

Contiene las IP, Ejemplo:
```
192.168.1.28
192.168.1.30
```


## Archivo de ejemplo logpassword.txt

```
2020-08-21-11:20:42 : Access denied 192.168.1.28 error with ubnt and password 87654321
2020-08-21-11:20:42 : Access denied 192.168.1.28 error with ubnt and password 87654322
2020-08-21-11:20:42 : OK The new 192.168.1.28 password is qwerty
```

## Archivo de ejemplo log_file.txt

Toda la salida:

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
