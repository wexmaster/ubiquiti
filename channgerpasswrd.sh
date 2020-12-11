#!/usr/bin/expect -f
#capture logs for debugging
log_file log_file.txt
#open the file to take the words from, (happens before proc above)
set file [lindex $argv 0]
set input [ open "$file" "RDONLY" ];

set timeout 5
#set ip [lindex $argv 0]
set user [lindex $argv 1]
set password [lindex $argv 2]
set password2 [lindex $argv 3]
set password3 [lindex $argv 4]
set newpass [lindex $argv 5]
#files out
set outfile [open "logpassword.txt" w]
 

#while there are still words, (we exit on a match) ...keep going....
while {[gets $input ip] != -1} {

#insert date in log
set date [exec date +%F-%R:%S]

set noconnect "NAN"

spawn /usr/bin/ssh $user@$ip 


expect "No route to host" { set noconnect "No route to host"  }


if { $noconnect == "No route to host" } {

puts -nonewline $outfile "\n$date : No route to host $ip" 
} else {

expect "yes/no" { send "yes\r" }
expect "assword:" {send "$password\r"}
expect "Permission denied" {puts -nonewline $outfile "\n$date : Access denied $ip error with $user and password $password"}
expect "assword:" {send "$password2\r"}
expect "Permission denied" {puts -nonewline $outfile "\n$date : Access denied $ip error with $user and password $password2"}
expect "assword:" {send "$password3\r"}
expect "Permission denied"  {puts -nonewline $outfile "\n$date : Access denied $ip error with $user and password $password , $password2 , $password3" }



#capture old password before replacing new password
expect "#" { send "cat /etc/passwd \r" 
expect -re "^(.*):(.*):(.*):(.*):(.*):(.*):(.*)\n"
set output $expect_out(2,string)

expect "#" {  send "\r" ; puts "$output\n" }

expect "#" { send "passwd\r" }
expect "New password:" {send "$newpass\r"}
sleep 1
expect "Retype password:" {send "$newpass\r"}
sleep 1
#capture new password to replace in file settings
expect "#" { send "cat /etc/passwd \r" }
expect -re "^(.*):(.*):(.*):(.*):(.*):(.*):(.*)\n"
set outputnew $expect_out(2,string)
expect "#" { puts "$outputnew\n" ; send "\r" }
#Replace in file
expect "#" { send "sed -i 's+$output+$outputnew+g' /tmp/system.cfg\r" }
sleep 1
#Save config
expect "#" { send "save\r" }
sleep 3
#reboot device
expect "#" { send "reboot\r" }
sleep 5
puts -nonewline $outfile "\n$date : OK The new $ip password is $newpass"
}

}
}
exit
