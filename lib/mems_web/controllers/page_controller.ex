defmodule MemsWeb.PageController do
  use MemsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def reminisce(conn, _params) do
    render(conn, "reminisce.html")
  end

  def how(conn, params) do
    render(conn, "how.html")
  end

  def what(conn, _params) do
    render(conn, "what.html")
  end

  def who(conn, params) do
    render(conn, "who.html")
  end

  def testimonials(conn, params) do
    render(conn, "testimonials.html")
  end

  def contact(conn, params) do
    render(conn, "contact.html")
  end
end
