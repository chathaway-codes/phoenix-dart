# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dart,
  ecto_repos: [Dart.Repo]

# Configures the endpoint
config :dart, DartWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ln+H/ceGxf0JLoiO1MVkW5ZvRFpLwBFwFxJZ4FX9Qbs/q3EEo9xhEYVACZECcRvF",
  render_errors: [view: DartWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Dart.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
