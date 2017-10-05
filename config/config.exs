# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
       ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss,
       Discuss.Endpoint,
       url: [
         host: "localhost"
       ],
       secret_key_base: "Yxc97pDVehkBOhkg4k6OAYdVszM4Rb7f7Eig84RoqZ5eE/7E6H8J7HN53+QcCe0c",
       render_errors: [
         view: Discuss.ErrorView,
         accepts: ~w(html json)
       ],
       pubsub: [
         name: Discuss.PubSub,
         adapter: Phoenix.PubSub.PG2
       ]

# Configures Elixir's Logger
config :logger,
       :console,
       format: "$time $metadata[$level] $message\n",
       metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :ueberauth,
       Ueberauth,
       providers: [
         github: {Ueberauth.Strategy.Github, []}
       ]

config :ueberauth,
       Ueberauth.Strategy.Github.OAuth,
       client_id: "deedd6d1d35d69aa1866",
       client_secret: "d36ead1c40d7b304a7541ec767cec071400012fc"