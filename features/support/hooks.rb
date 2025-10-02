require_relative 'appium-lib/components'
require_relative 'appium-lib/login_screen'

Before do
  @nav = Navigator.new
  @toaster = Toaster.new
  @login = LoginScreen.new

  $driver = $core_driver.start_driver
end

After do |scenario|
  if scenario.failed? && $driver&.session_id
    AppiumFailureHelper.handler_failure($driver, scenario.exception)
    begin
      FileUtils.mkdir_p('logs/screenshots')
      file_path = "logs/screenshots/#{Time.now.strftime('%Y%m%d_%H%M%S')}.png"
      if $driver.respond_to?(:save_screenshot)
        $driver.save_screenshot(file_path)
      elsif $driver.respond_to?(:screenshot)
        $driver.screenshot(file_path)
      end
      if File.exist?(file_path)
        Allure.add_attachment(
          name: "Screenshot da Falha",
          type: Allure::ContentType::PNG,
          source: File.open(file_path)
        )
      end
    rescue => e
      puts "Erro ao capturar screenshot para o Allure: #{e.message}"
    end
  end
  $driver.quit if $driver&.session_id
end