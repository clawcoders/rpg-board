defmodule CoreApi.Sheets.Row do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  alias CoreApi.Sheets.{RowVisibility, Sheet}

  schema "rows" do
    field :name, :string
    field :value, :string
    field :script, :string

    belongs_to :sheet, Sheet
    has_many :row_visibilities, RowVisibility

    timestamps()
  end

  @doc false
  def changeset(row, attrs) do
    row
    |> cast(attrs, [:name, :value, :script])
    |> validate_required([:name, :value])
  end
end
