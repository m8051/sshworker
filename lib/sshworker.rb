require "sshworker/version"
require 'fileutils'
require 'yaml'

module Sshworker

  class Worker

    attr_reader :servername, :file, :content

    def initialize(servername, command)
      @servername = servername
      @command = command
      @file = '~/.sshworker'
      @content = read_yaml
    end

    def read_yaml
      if File.exists?File.expand_path(@file)
        template = File.expand_path(@file)
        yaml_content = YAML.load_file(File.open(template))
      else
        puts "sshworker config file doesn't exist. Creating a new ~/.sshworker. Please review it customize it."
        sample_config_file = File.join(File.dirname(__FILE__), "templates/sshworker_config_sample.yaml")
        FileUtils.cp sample_config_file, File.expand_path("~/.sshworker")
      end
    end

    def run
      command = @content["server"]["proxy_command"] + " " + "#{@servername} #{@command}"
      exec(command)
    end

    def to_s
      "Running: " + " " +  @content["server"]["proxy_command"] + " " + "#{@servername} #{@command}"
    end

  end

end
