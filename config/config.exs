# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :project1,
  ecto_repos: [Project1.Repo]

# Configures the endpoint
config :project1, Project1Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v4gNGcijmG8VKfgQQwkzgIN5Njb7c/0dijbKxHJNvDAk1dKzrnte4kLNusOfjXfV",
  render_errors: [view: Project1Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: Project1.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
