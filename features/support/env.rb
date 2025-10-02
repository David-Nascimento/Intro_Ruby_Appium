require 'allure-cucumber'
require 'appium_lib_core'
require 'fileutils'
require 'pathname'
require 'cucumber'
require 'toml-rb'
require 'appium_failure_helper'

AllureCucumber.configure do |config|
  config.results_directory = "logs"
  config.clean_results_directory = true
end

platform = ENV['PLATFORM'] || 'android'
project_root = Pathname.new(__dir__).parent.parent
config_path = project_root.join('config', platform, 'appium.toml')
raise "Arquivo de configuração não encontrado: #{config_path}" unless File.exist?(config_path)

config_data = TomlRB.load_file(config_path)

caps = config_data['caps']
server_url = config_data.dig('server', 'url')

opts = {
  caps: caps,
  appium_lib: {
    server_url: server_url
  }
}

begin
  $core_driver = Appium::Core::Driver.for(opts)
  $wait = Selenium::WebDriver::Wait.new(timeout: 10)
rescue StandardError => e
  puts "Erro ao inicializar Appium::Driver: #{e.message}"
end