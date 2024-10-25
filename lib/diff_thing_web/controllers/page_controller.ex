defmodule DiffThingWeb.PageController do
  use DiffThingWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    conn |> render_inertia("DiffView")
  end
end
