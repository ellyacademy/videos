defmodule Dynasup.Worklaoder do
  use GenServer

  @me __MODULE__

  def init(max_workload) do
    queue = Enum.map(1..max_workload,      
      fn _n -> 
        fn -> :timer.sleep(1000) end
      end)
    {:ok, queue}
  end

  def start_link(max_workload) do
    GenServer.start_link(__MODULE__, max_workload, name: @me)
  end

  def next_job() do
    GenServer.call(@me, {:next_job})
  end

  def handle_call({:next_job}, _from, []) do
    {:reply, nil, []}
  end

  def handle_call({:next_job}, _from, queue) do
    [h | t] = queue
    {:reply, h, t}
  end
end
