defmodule DiffThing.Repo.Migrations.CreateDiffs do
  use Ecto.Migration

  def change do
    create table(:diffs) do
      add :old_value, :string
      add :new_value, :string

      timestamps(type: :utc_datetime)
    end
  end
end
