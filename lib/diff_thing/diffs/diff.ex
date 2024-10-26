defmodule DiffThing.Diffs.Diff do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :string, autogenerate: false}
  @derive {Phoenix.Param, key: :id}

  schema "diffs" do
    field :new_value, :string
    field :old_value, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(diff, attrs) do
    diff
    |> cast(attrs, [:id, :old_value, :new_value])
    |> validate_required([:id, :old_value, :new_value])
    |> validate_length(:id, is: 6)
  end
end
