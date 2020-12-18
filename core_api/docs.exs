[
  main: "readme",
  extras: [
    "README.md"
  ],
  source_url: "https://github.com/clawcoders/rpg-board/tree/master/core_api",
  nest_modules_by_prefix: [
    CoreApi,
    CoreApiWeb
  ],
  groups_for_modules: [
    Base: [
      CoreApi,
      CoreApi.Application
    ],
    Database: [
      CoreApi.Repo,
      CoreApi.Accounts,
      CoreApi.Accounts.Player,
      CoreApi.Sheets,
      CoreApi.Sheets.Row,
      CoreApi.Sheets.RowVisibility,
      CoreApi.Sheets.Sheet,
    ],
    Phoenix: [
      CoreApiWeb,
      CoreApiWeb.Endpoint,
      CoreApiWeb.Router,
      CoreApiWeb.Router.Helpers,
      CoreApiWeb.UserSocket,
      CoreApiWeb.Gettext,
      CoreApiWeb.ErrorView,
      CoreApiWeb.ErrorHelpers
    ],
    Utils: [
      CoreApiWeb.Telemetry
    ]
  ]
]
