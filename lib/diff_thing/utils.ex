defmodule DiffThing.Utils do
  @charset ~c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
  @length 6

  def generate_unique_id(module, repo) do
    id = generate_id()

    case repo.get(module, id) do
      nil -> id
      _ -> generate_unique_id(module, repo)
    end
  end

  defp generate_id do
    1..@length
    |> Enum.map(fn _ -> Enum.random(@charset) end)
    |> List.to_string()
  end
end
