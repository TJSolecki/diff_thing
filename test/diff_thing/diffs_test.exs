defmodule DiffThing.DiffsTest do
  use DiffThing.DataCase

  alias DiffThing.Diffs

  describe "diffs" do
    alias DiffThing.Diffs.Diff

    import DiffThing.DiffsFixtures

    @invalid_attrs %{new_value: nil, old_value: nil}

    test "list_diffs/0 returns all diffs" do
      diff = diff_fixture()
      assert Diffs.list_diffs() == [diff]
    end

    test "get_diff!/1 returns the diff with given id" do
      diff = diff_fixture()
      assert Diffs.get_diff!(diff.id) == diff
    end

    test "create_diff/1 with valid data creates a diff" do
      valid_attrs = %{new_value: "some new_value", old_value: "some old_value"}

      assert {:ok, %Diff{} = diff} = Diffs.create_diff(valid_attrs)
      assert diff.new_value == "some new_value"
      assert diff.old_value == "some old_value"
    end

    test "create_diff/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Diffs.create_diff(@invalid_attrs)
    end

    test "update_diff/2 with valid data updates the diff" do
      diff = diff_fixture()
      update_attrs = %{new_value: "some updated new_value", old_value: "some updated old_value"}

      assert {:ok, %Diff{} = diff} = Diffs.update_diff(diff, update_attrs)
      assert diff.new_value == "some updated new_value"
      assert diff.old_value == "some updated old_value"
    end

    test "update_diff/2 with invalid data returns error changeset" do
      diff = diff_fixture()
      assert {:error, %Ecto.Changeset{}} = Diffs.update_diff(diff, @invalid_attrs)
      assert diff == Diffs.get_diff!(diff.id)
    end

    test "delete_diff/1 deletes the diff" do
      diff = diff_fixture()
      assert {:ok, %Diff{}} = Diffs.delete_diff(diff)
      assert_raise Ecto.NoResultsError, fn -> Diffs.get_diff!(diff.id) end
    end

    test "change_diff/1 returns a diff changeset" do
      diff = diff_fixture()
      assert %Ecto.Changeset{} = Diffs.change_diff(diff)
    end
  end
end
