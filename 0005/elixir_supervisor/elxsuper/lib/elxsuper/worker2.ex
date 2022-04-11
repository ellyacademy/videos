defmodule Elxsuper.Worker2 do
  def call_server(msgNum \\ 0) do
    IO.puts("Enviando msg ##{msgNum}")
    GenServer.cast(Elxsuper.Worker1, {:run, msgNum})
    :timer.sleep(1000)
    call_server(msgNum + 1)
  end
  
end
