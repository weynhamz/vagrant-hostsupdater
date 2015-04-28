require "vagrant-hostsupdater/version"
require "vagrant-hostsupdater/command"
require "vagrant-hostsupdater/plugin"

module VagrantPlugins
  module HostsUpdater
    def self.source_root
      @source_root ||= Pathname.new(File.expand_path('../../', __FILE__))
    end
    class Plugin < Vagrant.plugin(2)
      name 'guestip'

      command('guestip', primary: false) do
        GetGuestIP
      end
    end
  end
end

