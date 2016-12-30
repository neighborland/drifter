# Drifter

Vagrant up a Ruby/Postgresql based development environment.

Drifter uses Vagrant and Virtualbox, and provisions the box with Ansible.

Drifter has been tested on Ubuntu 16.04.

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

Install Ansible, VirtualBox, and Vagrant

tl;dr:

```
brew install ansible
brew cask install virtualbox
brew cask install vagrant
```

## Usage

`vagrant up`

### Configuration

The Postgresql and Ruby versions are configured in the `Vagrantfile`
in the `config.vm.provision "ansible"` block.

## Contributing

1. Fork it ( https://github.com/neighborland/drifter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
