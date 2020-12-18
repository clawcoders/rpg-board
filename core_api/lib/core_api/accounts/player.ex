defmodule CoreApi.Accounts.Player do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  alias CoreApi.Sheets.RowVisibility

  schema "players" do
    field :email, :string
    field :name, :string
    field :password_hash, :string

    has_many :row_visibilities, RowVisibility

    timestamps()
  end

  @doc false
  def changeset(player, attrs) do
    player
    |> cast(attrs, [:name, :email, :password_hash])
    |> validate_required([:name, :email])
  end
end
