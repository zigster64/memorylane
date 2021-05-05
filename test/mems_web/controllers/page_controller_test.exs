defmodule MemsWeb.PageControllerTest do
  use MemsWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "It uses modern technology"
  end
end
