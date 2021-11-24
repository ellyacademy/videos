defmodule Dynasup.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: Dynasup.Worker.start_link(arg)
      {Dynasup.Worklaoder, 20000},
      Dynasup.Supervisor,
      {Dynasup.Manager, 20000}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_all, name: Dynasup.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
