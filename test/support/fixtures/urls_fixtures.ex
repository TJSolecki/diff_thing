defmodule DiffThing.UrlsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `DiffThing.Urls` context.
  """

  @doc """
  Generate a url.
  """
  def url_fixture(attrs \\ %{}) do
    {:ok, url} =
      attrs
      |> Enum.into(%{
        id: "some id",
        link: "some link"
      })
      |> DiffThing.Urls.create_url()

    url
  end
end
