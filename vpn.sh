#!/usr/bin/expect
# To work, you must use expect, which allows waiting for prompts and interacting with them
# apt install expect
# also requires openconnect, which acts like AnyConnect
# apt install openconnect
# Needs the oathtool key generator
# apt install oathtool
# In oathtool, you need to insert the token key, which can be obtained through the QR code

# Runs openconnect at the VPN address
spawn openconnect --verbose extranet.xxx.xx.xxx.xx

# Waits for the group prompt
expect "GROUP:"
send "3\r"
# Waits for the username prompt
expect -re "Please enter your username and password."
send "$env(USER)\r"

# Waits for the password prompt
expect "Password:"
send "$env(KEY)\r"    
# Awaits the prompt to enter the password
sleep 2
expect "Password:"

# Generates and enters the token
set token [exec oathtool --totp -b $env(TOTP)]
puts "$token"
sleep 2
send "$token\r"

# Enables interaction with the session
interact

