defmodule Mems.Email do
  import Bamboo.Email 
  import Mems.Mailer

  def test_email do
    new_email(
      to: "steve@raffmail.net",
      from: "steve@raffmail.net",
      subject: "test from mems",
      html_body: "<strong>Hello World</strong>",
      text_body: "Hello World Text"
    )
  end

  def send_test do
    test_email()
    |> Mailer.deliver_now!()
  end
end
