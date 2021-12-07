defmodule App1 do
  use GenServer

  @me __MODULE__

  def init(_) do
    {:ok, nil}
  end

  def start_link(_) do
    GenServer.start_link(__MODULE__, nil, name: @me)
  end

  def getMsg() do
    GenServer.call(@me, {:getMsg})
  end
   

  def handle_call({:getMsg}, _, _) do
    {:reply, "Ho, ho, ho ... Feliz Natal", nil}
  end

end
