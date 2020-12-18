defmodule CoreApi.Sheets.RowVisibility do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  alias CoreApi.Accounts.Player
  alias CoreApi.Sheets.Row

  schema "row_visibilities" do
    belongs_to :player, Player
    belongs_to :row, Row

    timestamps()
  end

  @doc false
  def changeset(row_visibility, attrs) do
    row_visibility
    |> cast(attrs, [])
    |> validate_required([])
  end
end
