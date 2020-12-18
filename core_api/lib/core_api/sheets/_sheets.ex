defmodule CoreApi.Sheets do
  @moduledoc """
  The Sheets context.
  """

  import Ecto.Query, warn: false
  alias CoreApi.Repo

  alias CoreApi.Sheets.Row

  @doc """
  Returns the list of rows.

  ## Examples

      iex> list_rows()
      [%Row{}, ...]

  """
  def list_rows do
    Repo.all(Row)
  end

  @doc """
  Gets a single row.

  Raises `Ecto.NoResultsError` if the Row does not exist.

  ## Examples

      iex> get_row!(123)
      %Row{}

      iex> get_row!(456)
      ** (Ecto.NoResultsError)

  """
  def get_row!(id), do: Repo.get!(Row, id)

  @doc """
  Creates a row.

  ## Examples

      iex> create_row(%{field: value})
      {:ok, %Row{}}

      iex> create_row(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_row(attrs \\ %{}) do
    %Row{}
    |> Row.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a row.

  ## Examples

      iex> update_row(row, %{field: new_value})
      {:ok, %Row{}}

      iex> update_row(row, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_row(%Row{} = row, attrs) do
    row
    |> Row.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a row.

  ## Examples

      iex> delete_row(row)
      {:ok, %Row{}}

      iex> delete_row(row)
      {:error, %Ecto.Changeset{}}

  """
  def delete_row(%Row{} = row) do
    Repo.delete(row)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking row changes.

  ## Examples

      iex> change_row(row)
      %Ecto.Changeset{data: %Row{}}

  """
  def change_row(%Row{} = row, attrs \\ %{}) do
    Row.changeset(row, attrs)
  end

  alias CoreApi.Sheets.RowVisibility

  @doc """
  Returns the list of row_visibilities.

  ## Examples

      iex> list_row_visibilities()
      [%RowVisibility{}, ...]

  """
  def list_row_visibilities do
    Repo.all(RowVisibility)
  end

  @doc """
  Gets a single row_visibility.

  Raises `Ecto.NoResultsError` if the Row visibility does not exist.

  ## Examples

      iex> get_row_visibility!(123)
      %RowVisibility{}

      iex> get_row_visibility!(456)
      ** (Ecto.NoResultsError)

  """
  def get_row_visibility!(id), do: Repo.get!(RowVisibility, id)

  @doc """
  Creates a row_visibility.

  ## Examples

      iex> create_row_visibility(%{field: value})
      {:ok, %RowVisibility{}}

      iex> create_row_visibility(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_row_visibility(attrs \\ %{}) do
    %RowVisibility{}
    |> RowVisibility.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a row_visibility.

  ## Examples

      iex> update_row_visibility(row_visibility, %{field: new_value})
      {:ok, %RowVisibility{}}

      iex> update_row_visibility(row_visibility, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_row_visibility(%RowVisibility{} = row_visibility, attrs) do
    row_visibility
    |> RowVisibility.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a row_visibility.

  ## Examples

      iex> delete_row_visibility(row_visibility)
      {:ok, %RowVisibility{}}

      iex> delete_row_visibility(row_visibility)
      {:error, %Ecto.Changeset{}}

  """
  def delete_row_visibility(%RowVisibility{} = row_visibility) do
    Repo.delete(row_visibility)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking row_visibility changes.

  ## Examples

      iex> change_row_visibility(row_visibility)
      %Ecto.Changeset{data: %RowVisibility{}}

  """
  def change_row_visibility(%RowVisibility{} = row_visibility, attrs \\ %{}) do
    RowVisibility.changeset(row_visibility, attrs)
  end

  alias CoreApi.Sheets.Sheet

  @doc """
  Returns the list of sheets.

  ## Examples

      iex> list_sheets()
      [%Sheet{}, ...]

  """
  def list_sheets do
    Repo.all(Sheet)
  end

  @doc """
  Gets a single sheet.

  Raises `Ecto.NoResultsError` if the Sheet does not exist.

  ## Examples

      iex> get_sheet!(123)
      %Sheet{}

      iex> get_sheet!(456)
      ** (Ecto.NoResultsError)

  """
  def get_sheet!(id), do: Repo.get!(Sheet, id)

  @doc """
  Creates a sheet.

  ## Examples

      iex> create_sheet(%{field: value})
      {:ok, %Sheet{}}

      iex> create_sheet(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_sheet(attrs \\ %{}) do
    %Sheet{}
    |> Sheet.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a sheet.

  ## Examples

      iex> update_sheet(sheet, %{field: new_value})
      {:ok, %Sheet{}}

      iex> update_sheet(sheet, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_sheet(%Sheet{} = sheet, attrs) do
    sheet
    |> Sheet.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a sheet.

  ## Examples

      iex> delete_sheet(sheet)
      {:ok, %Sheet{}}

      iex> delete_sheet(sheet)
      {:error, %Ecto.Changeset{}}

  """
  def delete_sheet(%Sheet{} = sheet) do
    Repo.delete(sheet)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking sheet changes.

  ## Examples

      iex> change_sheet(sheet)
      %Ecto.Changeset{data: %Sheet{}}

  """
  def change_sheet(%Sheet{} = sheet, attrs \\ %{}) do
    Sheet.changeset(sheet, attrs)
  end
end
