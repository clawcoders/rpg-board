defmodule CoreApi.SheetsTest do
  use CoreApi.DataCase

  alias CoreApi.Sheets

  describe "rows" do
    alias CoreApi.Sheets.Row

    @valid_attrs %{name: "some name", script: "some script", value: "some value"}
    @update_attrs %{
      name: "some updated name",
      script: "some updated script",
      value: "some updated value"
    }
    @invalid_attrs %{name: nil, script: nil, value: nil}

    def row_fixture(attrs \\ %{}) do
      {:ok, row} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Sheets.create_row()

      row
    end

    test "list_rows/0 returns all rows" do
      row = row_fixture()
      assert Sheets.list_rows() == [row]
    end

    test "get_row!/1 returns the row with given id" do
      row = row_fixture()
      assert Sheets.get_row!(row.id) == row
    end

    test "create_row/1 with valid data creates a row" do
      assert {:ok, %Row{} = row} = Sheets.create_row(@valid_attrs)
      assert row.name == "some name"
      assert row.script == "some script"
      assert row.value == "some value"
    end

    test "create_row/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Sheets.create_row(@invalid_attrs)
    end

    test "update_row/2 with valid data updates the row" do
      row = row_fixture()
      assert {:ok, %Row{} = row} = Sheets.update_row(row, @update_attrs)
      assert row.name == "some updated name"
      assert row.script == "some updated script"
      assert row.value == "some updated value"
    end

    test "update_row/2 with invalid data returns error changeset" do
      row = row_fixture()
      assert {:error, %Ecto.Changeset{}} = Sheets.update_row(row, @invalid_attrs)
      assert row == Sheets.get_row!(row.id)
    end

    test "delete_row/1 deletes the row" do
      row = row_fixture()
      assert {:ok, %Row{}} = Sheets.delete_row(row)
      assert_raise Ecto.NoResultsError, fn -> Sheets.get_row!(row.id) end
    end

    test "change_row/1 returns a row changeset" do
      row = row_fixture()
      assert %Ecto.Changeset{} = Sheets.change_row(row)
    end
  end

  describe "row_visibilities" do
    alias CoreApi.Sheets.RowVisibility

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def row_visibility_fixture(attrs \\ %{}) do
      {:ok, row_visibility} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Sheets.create_row_visibility()

      row_visibility
    end

    test "list_row_visibilities/0 returns all row_visibilities" do
      row_visibility = row_visibility_fixture()
      assert Sheets.list_row_visibilities() == [row_visibility]
    end

    test "get_row_visibility!/1 returns the row_visibility with given id" do
      row_visibility = row_visibility_fixture()
      assert Sheets.get_row_visibility!(row_visibility.id) == row_visibility
    end

    test "create_row_visibility/1 with valid data creates a row_visibility" do
      assert {:ok, %RowVisibility{} = row_visibility} = Sheets.create_row_visibility(@valid_attrs)
    end

    test "create_row_visibility/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Sheets.create_row_visibility(@invalid_attrs)
    end

    test "update_row_visibility/2 with valid data updates the row_visibility" do
      row_visibility = row_visibility_fixture()

      assert {:ok, %RowVisibility{} = row_visibility} =
               Sheets.update_row_visibility(row_visibility, @update_attrs)
    end

    test "update_row_visibility/2 with invalid data returns error changeset" do
      row_visibility = row_visibility_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Sheets.update_row_visibility(row_visibility, @invalid_attrs)

      assert row_visibility == Sheets.get_row_visibility!(row_visibility.id)
    end

    test "delete_row_visibility/1 deletes the row_visibility" do
      row_visibility = row_visibility_fixture()
      assert {:ok, %RowVisibility{}} = Sheets.delete_row_visibility(row_visibility)
      assert_raise Ecto.NoResultsError, fn -> Sheets.get_row_visibility!(row_visibility.id) end
    end

    test "change_row_visibility/1 returns a row_visibility changeset" do
      row_visibility = row_visibility_fixture()
      assert %Ecto.Changeset{} = Sheets.change_row_visibility(row_visibility)
    end
  end

  describe "sheets" do
    alias CoreApi.Sheets.Sheet

    @valid_attrs %{name: "some name", type: "some type"}
    @update_attrs %{name: "some updated name", type: "some updated type"}
    @invalid_attrs %{name: nil, type: nil}

    def sheet_fixture(attrs \\ %{}) do
      {:ok, sheet} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Sheets.create_sheet()

      sheet
    end

    test "list_sheets/0 returns all sheets" do
      sheet = sheet_fixture()
      assert Sheets.list_sheets() == [sheet]
    end

    test "get_sheet!/1 returns the sheet with given id" do
      sheet = sheet_fixture()
      assert Sheets.get_sheet!(sheet.id) == sheet
    end

    test "create_sheet/1 with valid data creates a sheet" do
      assert {:ok, %Sheet{} = sheet} = Sheets.create_sheet(@valid_attrs)
      assert sheet.name == "some name"
      assert sheet.type == "some type"
    end

    test "create_sheet/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Sheets.create_sheet(@invalid_attrs)
    end

    test "update_sheet/2 with valid data updates the sheet" do
      sheet = sheet_fixture()
      assert {:ok, %Sheet{} = sheet} = Sheets.update_sheet(sheet, @update_attrs)
      assert sheet.name == "some updated name"
      assert sheet.type == "some updated type"
    end

    test "update_sheet/2 with invalid data returns error changeset" do
      sheet = sheet_fixture()
      assert {:error, %Ecto.Changeset{}} = Sheets.update_sheet(sheet, @invalid_attrs)
      assert sheet == Sheets.get_sheet!(sheet.id)
    end

    test "delete_sheet/1 deletes the sheet" do
      sheet = sheet_fixture()
      assert {:ok, %Sheet{}} = Sheets.delete_sheet(sheet)
      assert_raise Ecto.NoResultsError, fn -> Sheets.get_sheet!(sheet.id) end
    end

    test "change_sheet/1 returns a sheet changeset" do
      sheet = sheet_fixture()
      assert %Ecto.Changeset{} = Sheets.change_sheet(sheet)
    end
  end
end
