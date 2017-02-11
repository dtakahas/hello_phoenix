defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, params) do
    if conn.private.phoenix_format == "json" do
      json(conn, %{"hello" => "there"})
    else
      render(conn, "index.html")
    end
  end
end
