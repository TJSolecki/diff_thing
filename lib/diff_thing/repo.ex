defmodule DiffThing.Repo do
  use Ecto.Repo,
    otp_app: :diff_thing,
    adapter: Ecto.Adapters.Postgres
end
