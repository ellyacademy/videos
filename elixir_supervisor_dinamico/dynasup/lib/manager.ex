defmodule Dynasup.Manager do
  use GenServer

  @me Manager

  def init(work_num) do
    Process.send_after(self(), :kickoff, 0)
    {:ok, work_num}
  end

  def start_link(work_num) do
    GenServer.start_link(__MODULE__, work_num, name: @me)
  end

  def done() do
    GenServer.cast(@me, :done)
  end

  def handle_info(:kickoff, work_num) do

    Enum.each(1..work_num,
      fn num -> 
        Dynasup.Supervisor.add_worker("worker#{num}")
      end
    )
    {:noreply, work_num}
  end

  def handle_cast(:done, _work_num = 1) do
    IO.puts("FIM")
    System.halt(0)
    {:noreply, nil}
  end

  def handle_cast(:done, work_num) do
    {:noreply, work_num - 1}
  end

end
