defmodule MemsWeb.PageController do
  use MemsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def what(conn, _params) do
    render(conn, "what.html")
  end

  def how(conn, params) do
    render(conn, "how.html")
  end

  def where(conn, params) do
    render(conn, "where.html")
  end

  def testimonials(conn, params) do
    render(conn, "testimonials.html")
  end

  def contact(conn, params) do
    render(conn, "contact.html")
  end
end
