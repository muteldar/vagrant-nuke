# coding: utf-8
require File.expand_path('../lib/vagrant-nuke/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'vagrant-nuke'
  s.version       = Vagrant::Nuke::VERSION
  s.date          = '2015-08-27'
  s.authors       = ['Mat Elder']
  s.email         = ['mathew.elder@gmail.com']
  s.summary       = "Delete all existing Vagrant boxes currently stored"
  s.description   = "Removes all boxes listed in vagrant box list."
  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  s.homepage      = "https://github.com/muteldar/vagrant-nuke"
  s.license       = "MIT"
end
