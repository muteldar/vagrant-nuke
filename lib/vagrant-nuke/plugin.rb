module Vagrant
  module Nuke
    class Plugin < Vagrant.plugin('2')
      name "nuke"
      description <<-DESC
      The `nuke` command deletes all existing Vagrant boxes currently stored
      as seen in vagrant box list.
      DESC

      command 'nuke' do
        require_relative 'command'
        Command
      end

    end
  end
end