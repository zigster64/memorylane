defmodule MemsWeb.LayoutView do
  use MemsWeb, :view

  def name("index.html") do
    "Home"
  end

  def name(template) do
    [n|_] = String.split(template, ".")
    String.capitalize(n)
  end

  def nav_link(what, title, template) do
    if String.starts_with?(template, what) do
    raw("""
    <a class="ml-5 px-2 py-1 text-yellow-300 hover:text-yellow-200" href="/#{what}">#{title}</a>
    """)
    else
    raw("""
    <a class="ml-5 px-2 py-1 text-gray-200 hover:text-gray-400" href="/#{what}">#{title}</a>
    """)
    end
  end
end
