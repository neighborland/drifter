# Drifter

Vagrant up a Ruby/Postgresql based development environment.

Drifter Uses the Vagrant-Parallels provider, and provisions the box with Ansible.

Drifter has been tested on an Ubuntu 14.04 Vagrant box.

Drifter installs the following software (see the `playbook.yml`
for the full list):

* Postgresql (version is configurable in `Vagrantfile`)
* Ruby installed with
  [Ruby-Install](https://github.com/postmodern/ruby-install) (version
  is configurable in `Vagrantfile`)
* [Chruby](https://github.com/postmodern/chruby)
* Node.js
* [Phantomjs 2.1.1](http://phantomjs.org/)
* Dotfile management:
  [RCM by Thoughtbot](https://github.com/thoughtbot/rcm)
* Utilities: tmux, curl, git, terminal only Emacs, zsh,
  [direnv](http://direnv.net/),
  [keychain](http://www.funtoo.org/Keychain), gnupg and gnupg-agent

## Installation

Install Ansible, Paralles, Vagrant, and the
[Vagrant Parallels Provider](https://github.com/Parallels/vagrant-parallels)

Parallels and Vagrant can both be installed with [Homebrew-Cask](https://github.com/caskroom/homebrew-cask)

tl;dr:

```
brew install ansible
brew cask install parallels-desktop
brew cask install vagrant
vagrant plugin install vagrant-parallels
```

### Using other Vagrant providers

Any vagrant provider should work (VirtualBox, VMWare, etc). Simply
update the `config.vm.box` and `config.vm.provider` sections of the
`Vagrantfile`. VMWare and Parallels are not free but they perform
significantly better than VirtualBox - they will quickly pay for
themselves.

## Usage

`vagrant up`

### Configuration

The Postgresql and Ruby versions are configured in the `Vagrantfile`
in the `config.vm.provision "ansible"` block.

To build Phantomjs from source (it takes a long time) change the
`p.skip_tags` line to be like `p.skip_tags = "phantomjs2"`

## Contributing

1. Fork it ( https://github.com/neighborland/drifter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
