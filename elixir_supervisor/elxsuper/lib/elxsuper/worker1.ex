defmodule Elxsuper.Worker1 do
  use GenServer

  def init(_) do
    {:ok, nil}
  end

  def start_link(_) do
    IO.puts("Iniciando serviço")
    :timer.sleep(5000)
    GenServer.start_link(__MODULE__, nil, name: __MODULE__)
  end


  def handle_cast({:run, 5}, _) do
    raise "Erro"
  end

  def handle_cast({:run, msgNum}, _) do
    IO.puts("Processando ##{msgNum}")
    {:noreply, nil}
  end
end
