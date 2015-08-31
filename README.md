vagrant-nuke
========
[![Travis](https://img.shields.io/travis/muteldar/vagrant-nuke.svg?style=flat-square)]()
[![Gem](https://img.shields.io/gem/v/vagrant-nuke.svg?style=flat-square)]()
[![Gem](https://img.shields.io/gem/dt/vagrant-nuke.svg?style=flat-square)]()

Vagrant plugin to remove all boxes listed under vagrant box list

### Installation

    vagrant plugin install vagrant-nuke

### Usage

#### Basic Usage

    vagrant nuke

#### Options

  This is nothing more than a list of boxes that would have been destroyed, same as vagrant box list

    vagrant nuke -w
    vagrant nuke --whatif

##Contributing

 1. Fork it
 2. Create your feature branch (git checkout -b my-new-feature)
 3. Commit your changes (git commit -am 'Add some feature')
 4. Push to the branch (git push origin my-new-feature)
 5. Create a new Pull Request
