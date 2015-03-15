# coding: utf-8
require File.expand_path('../lib/vagrant-nuke/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'vagrant-nuke'
  s.version       = Vagrant::Nuke::VERSION
  s.date          = '2015-03-13'
  s.authors       = ['n00bworks']
  s.email         = ['mat@n00bworks.com']
  s.summary       = "Delete all existing Vagrant boxes currently stored"
  s.description   = "Using Vagrant can collect alot of boxes which after a while can become cluttered. While you can delete them individually Nuke will remove all linked boxes."
  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  s.homepage      = "https://github.com/n00bworks/vagrant-nuke"
  s.license       = "MIT"
end
