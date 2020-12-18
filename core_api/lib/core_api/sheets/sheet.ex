defmodule CoreApi.Sheets.Sheet do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  alias CoreApi.Accounts.Player
  alias CoreApi.Sheets.Row

  schema "sheets" do
    field :name, :string
    field :type, :string

    belongs_to :player, Player
    has_many :rows, Row

    timestamps()
  end

  @doc false
  def changeset(sheet, attrs) do
    sheet
    |> cast(attrs, [:name, :type])
    |> validate_required([:name, :type])
  end
end
