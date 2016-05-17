# Sshworker

Tool to facilitate running a command on a remote server over SSH 

## Installation

Install it yourself as: 

    $ gem install sshworker


Modify the yaml file ~/.sshworker according your needs:

```
# YAML file with the ssh settings
server:
    proxy_command: ssh -o ProxyCommand="ssh -W %h:%p lb1.adverts.ie" -A
```

## Usage
Help:

```
nebula[0] sshworker -h

Run commands over SSH 

-s, --server SERVERNAME          The hostname of the server
-c, --command COMMAND            Run the remote command
-h, --help                       Displays help

```
Example execution:

```
nebula[0] sshworker -s advertsutils -c "df -h" 
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        69G   26G   40G  40% /
udev            2.0G  4.0K  2.0G   1% /dev
tmpfs           791M  304K  791M   1% /run
none            5.0M     0  5.0M   0% /run/lock
none            2.0G     0  2.0G   0% /run/shm
/dev/sdb1       111G   45G   61G  43% /scratch
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sshworker. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

