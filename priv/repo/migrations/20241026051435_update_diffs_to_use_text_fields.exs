defmodule DiffThing.Repo.Migrations.UpdateDiffsToUseTextFields do
  use Ecto.Migration

  def change do
    alter table(:diffs) do
      modify :old_value, :text, from: :string, null: false
      modify :new_value, :text, from: :string, null: false
    end
  end
end
