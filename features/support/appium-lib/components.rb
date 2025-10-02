class Navigator
  def tap_hamburger
    $wait.until { $driver.find_element(xpath: "//android.widget.ImageButton[@content-desc='Open navigation drawer']") }
    $driver.find_element(xpath: "//android.widget.ImageButton[@content-desc='Open navigation drawer']").click
  end

  def list
    $driver.find_element(id: "io.qaninja.android.twp:id/rvNavigation")
  end

  def tap_by_text(target)
    $driver.find_element(xpath: "//*[@text='#{target}']").click
  end
end

