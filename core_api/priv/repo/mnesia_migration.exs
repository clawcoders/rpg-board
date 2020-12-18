alias :mnesia, as: Mnesia

Mnesia.create_schema([node()])
|> IO.inspect()
Mnesia.start()
|> IO.inspect()

IO.inspect Mnesia.create_table(:players,
  disc_copies: [node()],
  record_name: CoreApi.Accounts.Player,
  attributes: [:id, :email, :name, :password_hash, :updated_at, :inserted_at],
  type: :set
)

IO.inspect Mnesia.create_table(:sheets,
  disc_copies: [node()],
  record_name: CoreApi.Sheets.Sheet,
  attributes: [:id, :name, :type, :player_id, :updated_at, :inserted_at],
  type: :set
)

IO.inspect Mnesia.create_table(:rows, [
  disc_copies: [node()],
  record_name: CoreApi.Sheets.Row,
  attributes: [:id, :name, :value, :script, :updated_at, :inserted_at],
  type: :set
])

IO.inspect Mnesia.create_table(:row_visibilities, [
  disc_copies: [node()],
  record_name: CoreApi.Sheets.RowVisibility,
  attributes: [:id, :player_id, :row_id, :updated_at, :inserted_at],
  type: :set
])
