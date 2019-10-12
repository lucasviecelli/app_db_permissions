# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :app_db_permissions,
  ecto_repos: [AppDbPermissions.Repo]

# Configures the endpoint
config :app_db_permissions, AppDbPermissionsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9pxMq59GhyuD+v47R5Wc3JGzUZ95NaPxIS7CIeVFXhebr5S9msvjBJg4iRymigbI",
  render_errors: [view: AppDbPermissionsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AppDbPermissions.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
