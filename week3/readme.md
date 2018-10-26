# Week 3

## Terminal

### Basic Commands

* `cd` moves folders, e.g. `cd Documents`
* `ls` lists contents of folder 
* `pwd` prints working directory, i.e. the folder path that we're in

`..` represents the folder parent folder, so `cd ..` moves up one folder.

### Tips

* `Control + c` closes the current program
* `Control + e` moves the cursor to the end of the line
* `Control + a` moves the cursor to the beginning of the line
* `Control + d` tell the interpreter that we're done


## Python

* No types! `a = 2` is all you need (not `int a = 2;`)
* No semicolons
* No braces ({ or }), a colon and indentation is used instead
* `&&` is `and`
* `||` is `or`
* `!` is `not`
* Function are defined using the `def` keyword.
* Use `input()` to get text input. You will need to press enter after you enter the text.

See `examples/getting-started.py` for examples.


## Serial

The only parameter you need to set up a serial connection is the *baud rate*, on most programs this usually defaults to `9600`, so it's usually best to stick to that.

When you open a port on your computer, you will need to specify the *device name* too. When you plug in an Arduino to your computer, the operating system will assign it a name (a.k.a port name). On a Mac, do `ls /dev/tty*` before and after plugging in the Arduino. On a Windows machine, look in the Device Manager under COM ports to see what port the Arduino has been assigned to.

## OSC

### Sending 

To send an OSC message you need to specify an IP address and also a port. The IP address should be the IP of the machine that you want to send the message to. You can choose whatever port you want, but choose something above 2000.

### Receving

When you create an OSC server, set the IP address to '0.0.0.0', which means that the server will accept connections on all its IP addresses. The port number should match the sender.

