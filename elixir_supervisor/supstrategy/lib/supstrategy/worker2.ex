defmodule Supstrategy.Worker2 do
  use GenServer

  @name :worker2 

  def init(_) do
    {:ok, nil}
  end

  def start_link (_) do
    IO.puts("Iniciando #{@name}")
    GenServer.start_link(__MODULE__, nil, name: @name)
  end

  def handle_cast({:break}, _) do
    raise "Quebrando o #{@name}"
  end
end
