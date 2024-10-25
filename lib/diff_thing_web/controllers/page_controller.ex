defmodule DiffThingWeb.PageController do
  use DiffThingWeb, :controller

  def home(conn, _params) do
    conn
    |> assign_prop("oldValue", "foo")
    |> assign_prop("newValue", "bar")
    |> render_inertia("DiffView")
  end
end
