defmodule DiffThing.Diffs.Diff do
  use Ecto.Schema
  import Ecto.Changeset

  schema "diffs" do
    field :new_value, :string
    field :old_value, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(diff, attrs) do
    diff
    |> cast(attrs, [:old_value, :new_value])
    |> validate_required([:old_value, :new_value])
  end
end
