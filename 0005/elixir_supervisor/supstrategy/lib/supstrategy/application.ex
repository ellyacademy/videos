defmodule Supstrategy.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Supstrategy.Worker.start_link(arg)
      {Supstrategy.Worker1, nil},
      {Supstrategy.Worker2, nil},
      {Supstrategy.Worker3, nil}
     ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :rest_for_one, name: Supstrategy.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
