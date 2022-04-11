defmodule Dynasup.Supervisor do
  use DynamicSupervisor

  @me Supervisor

  def init(:no_args) do
    DynamicSupervisor.init(strategy: :one_for_one)
  end

  def start_link(_) do
    DynamicSupervisor.start_link(__MODULE__, :no_args,name: @me)
  end

  def add_worker(name) do
    DynamicSupervisor.start_child(@me, {Dynasup.Worker, name})
  end  
end
