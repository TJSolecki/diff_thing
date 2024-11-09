defmodule DiffThing.Urls.Url do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :string, autogenerate: false}
  @derive {Phoenix.Param, key: :id}

  schema "urls" do
    field :link, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(url, attrs) do
    url
    |> cast(attrs, [:link, :id])
    |> validate_required([:link, :id])
  end
end
