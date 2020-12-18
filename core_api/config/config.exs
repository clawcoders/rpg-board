# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :core_api,
  ecto_repos: [CoreApi.Repo]

# Configures the endpoint
config :core_api, CoreApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VXNM4SOcqPmmP4KrjC8zSTctLHIiK2D84thx/flL2GgxTZCfPLR5SU91lcSbklSF",
  render_errors: [view: CoreApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: CoreApi.PubSub,
  live_view: [signing_salt: "dxL1RlaD"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
