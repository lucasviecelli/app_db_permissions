defmodule AppDbPermissionsWeb.PageController do
  use AppDbPermissionsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
