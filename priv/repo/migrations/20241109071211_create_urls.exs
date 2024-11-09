defmodule DiffThing.Repo.Migrations.CreateUrls do
  use Ecto.Migration

  def change do
    create table(:urls) do
      add :link, :string

      timestamps(type: :utc_datetime)
    end
  end
end
