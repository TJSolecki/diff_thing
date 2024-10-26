defmodule DiffThing.Repo.Migrations.ChangeIdToStringInDiffs do
  use Ecto.Migration

  def change do
    alter table(:diffs) do
      modify :id, :string, from: :number, null: false
    end
  end
end
