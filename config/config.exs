# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ventus,
  ecto_repos: [Ventus.Repo]

# Configures the endpoint
config :ventus, VentusWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qt937ZRO1xnHtrVGLAbA68ICePPwdfSHPGIvPj4KV08t8+yVNAG2LeYTJ7DQMRUS",
  render_errors: [view: VentusWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Ventus.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
