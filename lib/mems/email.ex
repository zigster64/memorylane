defmodule Mems.Email do
  import Bamboo.Email 
  import Mems.Mailer

  def test_email do
    new_email(
      to: "steve@raffmail.net",
      from: "mlr@raffmail.net",
      subject: "You have a new Memory Lane enquiry",
      html_body: "<strong>Hello World</strong> in HTML",
      text_body: "Hello World in Text"
    )
  end

  def send_test do
    test_email()
    |> Mems.Mailer.deliver_later!()
  end
end
