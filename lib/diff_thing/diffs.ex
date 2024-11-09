defmodule DiffThing.Diffs do
  @moduledoc """
  The Diffs context.
  """

  import Ecto.Query, warn: false
  alias DiffThing.Utils
  alias DiffThing.Repo

  alias DiffThing.Diffs.Diff

  @doc """
  Returns the list of diffs.

  ## Examples

      iex> list_diffs()
      [%Diff{}, ...]

  """
  def list_diffs do
    Repo.all(Diff)
  end

  @doc """
  Gets a single diff.

  Raises `Ecto.NoResultsError` if the Diff does not exist.

  ## Examples

      iex> get_diff!(123)
      %Diff{}

      iex> get_diff!(456)
      ** (Ecto.NoResultsError)

  """
  def get_diff!(id), do: Repo.get!(Diff, id)

  def get_diff(id), do: Repo.get(Diff, id)

  @doc """
  Creates a diff.

  ## Examples

      iex> create_diff(%{field: value})
      {:ok, %Diff{}}

      iex> create_diff(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_diff(attrs \\ %{}) do
    id = Utils.generate_unique_id(Diff, Repo)

    %Diff{}
    |> Diff.changeset(attrs |> Map.put("id", id))
    |> Repo.insert()
  end

  @doc """
  Updates a diff.

  ## Examples

      iex> update_diff(diff, %{field: new_value})
      {:ok, %Diff{}}

      iex> update_diff(diff, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_diff(%Diff{} = diff, attrs) do
    diff
    |> Diff.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a diff.

  ## Examples

      iex> delete_diff(diff)
      {:ok, %Diff{}}

      iex> delete_diff(diff)
      {:error, %Ecto.Changeset{}}

  """
  def delete_diff(%Diff{} = diff) do
    Repo.delete(diff)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking diff changes.

  ## Examples

      iex> change_diff(diff)
      %Ecto.Changeset{data: %Diff{}}

  """
  def change_diff(%Diff{} = diff, attrs \\ %{}) do
    Diff.changeset(diff, attrs)
  end
end
