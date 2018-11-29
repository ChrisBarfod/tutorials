defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # Tell phoenix to find a template called index.html.eex and render it
    # Phoenix will look for the template in a dir named after our controller
    render(conn, "index.html")
  end

  # Pattern match against the params passed into the show func so that 'messenger'
  # var is bound to value put in the :messenger position in URL
  def show(conn, %{"messenger" => messenger}) do
    render(conn, "show.html", messenger: messenger)
  end
 
end

