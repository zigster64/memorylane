defmodule MemsWeb.LayoutView do
  use MemsWeb, :view

  def nav_link(what, title, template) do
    if String.starts_with?(template, what) do
    raw("""
    <a class="ml-5 px-2 py-1 text-blue-400 hover:text-blue-800 lg:text-yellow-300 lg:hover:text-yellow-200" href="/#{what}">#{title}</a>
    """)
    else
    raw("""
    <a class="ml-5 px-2 py-1 text-gray-400 hover:text-gray-800 lg:text-gray-200 lg:hover:text-gray-400" href="/#{what}">#{title}</a>
    """)
    end
  end
end
