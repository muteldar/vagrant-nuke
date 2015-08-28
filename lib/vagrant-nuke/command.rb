module Vagrant
  module Nuke
    class Command < Vagrant.plugin('2', :command)
      def self.synopsis
        "remove all boxes under vagrant box list."
      end

      def execute
        options = {}
        opts = OptionParser.new do |o|
          o.banner = 'Usage: vagrant nuke [options]'
          o.separator ""
          o.separator "Options:"
          o.separator ""
          o.on("-w","--whatif", "Displays all boxes that would be removed") do |i|
            options[:whatif] = i
          end
        end

        args = parse_options(opts)
        return if !args

        boxes = @env.boxes.all.sort
        if boxes.empty?
          return @env.ui.warn("no boxes found")
        end

        nuke_boxes(boxes, options[:whatif])
        #exit as 0 great success!
        0
      end

      def nuke_boxes(boxes, whatif)
        if whatif
          @env.ui.info("These would have been nuked")
          boxes.each do |name, version, provider|
            @env.ui.info("#{name} #{version}")
          end
        elsif
          boxes.each do |name, version, provider|
            @env.ui.info("#{name} #{version}")
            @env.action_runner.run(Vagrant::Action.action_box_remove, {
              box_name:                 name,
              box_version:              version,
              force_confirm_box_remove: true,
            })
          end
        end
      end

    end
  end
end
