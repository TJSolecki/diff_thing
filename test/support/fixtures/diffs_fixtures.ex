defmodule DiffThing.DiffsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `DiffThing.Diffs` context.
  """

  @doc """
  Generate a diff.
  """
  def diff_fixture(attrs \\ %{}) do
    {:ok, diff} =
      attrs
      |> Enum.into(%{
        new_value: "some new_value",
        old_value: "some old_value"
      })
      |> DiffThing.Diffs.create_diff()

    diff
  end
end
