# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :live_view_intro,
  ecto_repos: [LiveViewIntro.Repo]

# Configures the endpoint
config :live_view_intro, LiveViewIntroWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3bnbKKCa0m9x1D4cl0dXgenhdtE8bb5D89eFFktdmm5A8XERAvInJoiPoxji00xw",
  render_errors: [view: LiveViewIntroWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LiveViewIntro.PubSub,
  live_view: [signing_salt: "556pi3BC"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
