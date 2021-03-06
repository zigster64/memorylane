# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :mems, MemsWeb.Endpoint,
  url: [host: {:system, "MLR_HOST"}],
  secret_key_base: "muNL5MRnZxL52ePzZR16cmqcgMgMPkU/glAtDHEgD1mmMxeGbzaXQjgzfJ25AP0P",
  render_errors: [view: MemsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Mems.PubSub,
  live_view: [signing_salt: "zB9Lxr2S"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Email config
config :mems, Mems.Mailer,
  adapter: Bamboo.SMTPAdapter,
  server: {:system, "MLR_SMTP_SERVER"},
  hostname: {:system, "MLR_SMTP_HOSTNAME"},
  port: {:system, "MLR_SMTP_PORT"},
  username: {:system, "MLR_SMTP_USERNAME"},
  password: {:system, "MLR_SMTP_PASSWORD"},
  tls: :if_available, # can be `:always` or `:never`
  allowed_tls_versions: {:system, "MLR_ALLOWED_TLS_VERSIONS"}, #:tlsv1, :tlsv1.1, :tlsv1.2], # or {:system, "ALLOWED_TLS_VERSIONS"} w/ comma seprated values (e.g. "tlsv1.1,tlsv1.2")
  ssl: true, # can be `true`
  retries: 1,
  no_mx_lookups: false, # can be `true`
  auth: :if_available # can be `:always`. If your smtp relay requires a

if Mix.env() == :test do
  config :mems, Mems.Mailer, adapter: Mems.SMTPTestAdapter
end

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
