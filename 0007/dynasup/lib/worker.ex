defmodule Dynasup.Worker do
  use GenServer, restart: :transient

  def init(name) do
    Process.send_after(self(), :run_once,0)
    {:ok, name}
  end

  def start_link(name) do
    GenServer.start_link(__MODULE__, name)
  end

  def handle_info(:run_once, name) do
    Dynasup.Worklaoder.next_job()
    |> run

    {:noreply, name}
  end

  defp run(nil) do
    Dynasup.Manager.done()
  end

  defp run(job) do
    job.()
    send(self(), :run_once)
  end


end
