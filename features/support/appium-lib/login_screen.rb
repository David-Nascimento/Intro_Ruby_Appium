class LoginScreen
  def sign_in(email, pass)
    find_element(id: "io.qaninja.android.twp:id/etEmail").send_keys(email)
    find_element(id: "io.qaninja.android.twp:id/etPassword").send_keys(pass)
    find_element(id: "io.qaninja.android.twp:id/btnSubmit").click
  end
end

class Toaster
  def toast
    return find_element(xpath: "//*/android.widget.Toast")
  end
end