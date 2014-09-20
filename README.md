# Box - Gourmet VM

A virtual machine to quickly start developing gourmet CakePHP 3 applications.

* Ubunty (Trusty)
* Apache2 (expires, headers, php, rewrite, ssl)
* MySQL & MongoDB & Redis
* PHP 5.5 (cli, curl, intl, mcrypt, mysql, xdebug)
* RabbitMQ
* Elastic Search
* [PHPCS][phpcs], [PHPMD][phpmd], [PHPCPD][phpcpd], [PHPDCD][phpdcd], [PHPLOC][phploc], [PHPUNIT][phpunit]

## Requirements

* [VirtualBox][virtualbox]
* [Vagrant][vagrant] >= 1.3

## Install

```
git clone --depth 1 https://github.com/gourmet/box
composer create-project -s dev gourmet/platform box/app
cd box; rm -rf .git; vagrant up
echo 192.168.13.37 app.vm >> /etc/hosts
```

This will:

* Clone this repository
* Create a `Gourmet/Platform` project to use on the VM
* Start the box for the first time
* Point `app.vm` to the VM

## Defaults

| Property       | Default Value    |
|----------------|------------------|
| IP address     | 192.168.13.37    |
| Hostname       | app.vm           |
| SSH users      | root, vagrant    |
| Shared folders | ./app            |
| Timezone       | America/Montreal |

For more details, or to change anything, check `puphpet/config.yaml`.

> __NOTE:__ An SSH key is automatically created at `puphpet/files/dot/ssh/id_rsa`.

## Usage

Connect to the VM:

```
ssh -i puphpet/files/dot/ssh/id_rsa root@app.box
ssh -i puphpet/files/dot/ssh/id_rsa vagrant@app.box
```

Re-configure the VM:

```
$EDITOR puphpet/config.yaml
vagrant provision
```

Get familiar with the tools used:

* [Vagrant][vagrant]
* [Puppet][puppet]
* [Puphpet][puphpet]

## Versioning

All gourmet packages use [semantic versioning][semver]:

> Given a version number MAJOR.MINOR.PATCH, increment the:
>
> - MAJOR version when you make incompatible API changes,
> - MINOR version when you add functionality in a backwards-compatible manner, and
> - PATCH version when you make backwards-compatible bug fixes.
>
> Additional labels for pre-release and build metadata are available as extensions to the
> MAJOR.MINOR.PATCH format.

## License

Copyright (c) 2014, Jad Bitar and licensed under [The MIT License][mit].

[mit]:http://www.opensource.org/licenses/mit-license.php
[phpcs]:https://github.com/squizlabs/PHP_CodeSniffer
[phpmd]:http://phpmd.org/
[phpcpd]:https://github.com/sebastianbergmann/phpcpd
[phpdcd]:https://github.com/sebastianbergmann/phpdcd
[phploc]:http://github.com/sebastianbergmann/phploc
[phpunit]:http://phpunit.de
[puphpet]:http://puphpet.com
[puppet]:http://puppetlabs.com
[semver]:http://semver.org
[vagrant]:http://vagrantup.com
[virtualbox]:http://virtualbox.org
