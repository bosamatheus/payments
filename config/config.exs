# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :payments,
  ecto_repos: [Payments.Repo]

# Configures the endpoint
config :payments, PaymentsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bdf8oGbKaHRivRKTLEq754CB+LQO/6CtRF8UxQn4ytA+u5W3MMy6GKfg8nzPwgZf",
  render_errors: [view: PaymentsWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Payments.PubSub,
  live_view: [signing_salt: "atQkIz77"]

config :payments, Payments.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

config :payments, :basic_auth,
  username: "username",
  password: "password"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
