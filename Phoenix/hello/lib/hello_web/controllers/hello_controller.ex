defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # Tell phoenix to find a template called index.html.eex and render it
    # Phoenix will look for the template in a dir named after our controller
    render(conn, "index.html")
  end
end

