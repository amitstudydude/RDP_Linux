curl -O https://pagekite.net/pk/pagekite.py
chmod +x pagekite.py
sudo mv -f pagekite.py /usr/local/bin




email=y0nxj8ze4@mozmail.com
Passwd=a3z2cfdb





>>> Creating kite: jha.pagekite.me                            [CTRL+C = Cancel]

    Welcome to PageKite!
    
    Please answer a few quick questions to
    create your first kite.
    
    By continuing, you agree to play nice
    and abide by the Terms of Service at:
    - https://pagekite.net/humans.txt

 => Use the PageKite.net service? [Y/n]




>>> Creating kite: jha.pagekite.me                            [CTRL+C = Cancel]

    We need to be able to contact you
    now and then with news about the
    service and your account.
    
    Your details will be kept private.

 => What is your e-mail address? 



>>> Creating kite: jha.pagekite.me                            [CTRL+C = Cancel]

*** Signup failed!
*** 
*** You already have an account. Log in to continue.

    By logging on to PageKite.net,
    you will be able to use this kite
    with your pre-existing account.

    Please log on ...
 => Password: 


>>> Creating kite: jha.pagekite.me                            [CTRL+C = Cancel]

*** Success!


 => Save settings to /root/.pagekite.rc? [Y/n] 


#port forwarding 80 to 8080

sudo iptables -t nat -A OUTPUT -o lo -p tcp --dport 80 -j REDIRECT --to-port 8080






















