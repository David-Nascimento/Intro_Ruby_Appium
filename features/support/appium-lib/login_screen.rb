require 'timeout'
class LoginScreen
  def sign_in(email, pass)
    # Linha corrigida (apenas com o erro de digitação 'etEmai' para teste)
    $driver.find_element(id: "io.qaninja.android.twp:id/etEmai").send_keys(email)
    
    $driver.find_element(id: "io.qaninja.android.twp:id/etPassword").send_keys(pass)
    $driver.find_element(id: "io.qaninja.android.twp:id/btnSubmit").click
  end
end

class Toaster
  def toast
    return $driver.find_element(xpath: "//*/android.widget.Toast")
  end
end