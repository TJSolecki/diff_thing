defmodule DiffThingWeb.PageController do
  use DiffThingWeb, :controller

  alias DiffThing.Diffs
  alias DiffThing.Diffs.Diff

  def new(conn, _params) do
    changeset = Diffs.change_diff(%Diff{})
    render(conn, :new, changeset: changeset)
  end

  def create(conn, %{"diff" => diff_params}) do
    case Diffs.create_diff(diff_params) do
      {:ok, diff} ->
        conn
        |> redirect(to: ~p"/diff/#{diff}")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, :new, changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    diff = Diffs.get_diff(id)

    if diff == nil do
      conn
      |> put_status(404)
      |> render(:not_found)
    else
      conn
      |> assign_prop("oldValue", diff.old_value)
      |> assign_prop("newValue", diff.new_value)
      |> render_inertia("DiffView")
    end
  end
end
