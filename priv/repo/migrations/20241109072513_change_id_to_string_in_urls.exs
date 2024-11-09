defmodule DiffThing.Repo.Migrations.ChangeIdToStringInUrls do
  use Ecto.Migration

  def change do
    alter table(:urls) do
      modify :id, :string, from: :number, null: false
    end
  end
end
