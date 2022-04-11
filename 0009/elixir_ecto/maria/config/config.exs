import Config

config :maria, Maria.Repo,
  database: "maria_repo",
  username: "elixir",
  password: "elixir",
  hostname: "localhost"

config :maria,
      ecto_repos: [Maria.Repo]
