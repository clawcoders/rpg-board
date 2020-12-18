# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CoreApi.Repo.insert!(%CoreApi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias CoreApi.{Accounts.Player, Repo, Sheets.RowVisibility, Sheets.Row, Sheets.Sheet}

CoreApi.Repo.insert!(%Player{
  name: "vini",
  email: "aaaaa@hotmail.com",
  row_visibilities: [
    %RowVisibility{
      row: %Row{
        name: "life",
        value: "10",
        sheet: %Sheet{
          name: "troll",
          type: "player"
        }
      }
    }
  ]
})
