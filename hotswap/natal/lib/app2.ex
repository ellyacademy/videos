defmodule App2 do
  use GenServer

  @me __MODULE__

  def init(_) do
    Process.send_after(self(),{:start}, 0)
    {:ok, nil}
  end

  def start_link(_) do
    GenServer.start_link(__MODULE__, nil, name: @me)
  end

  def handle_info({:start}, _) do
    requestMsg()
  end

  def requestMsg(count \\ 0) do
    IO.puts("Msg: #{App1.getMsg()}  - Count: #{count}")
    :timer.sleep(1000)
    count + 1
    |> requestMsg()
  end

end
