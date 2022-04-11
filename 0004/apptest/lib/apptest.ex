defmodule AppTest do
  def task req_id, client_pid do
    :timer.sleep(1000)    
    IO.puts """
    Executando Req #{req_id} 
    AppTest v2
    """
    send(client_pid, {:resposta, req_id})
  end

  def api do
    receive do
      {:resposta, req_id} ->
        IO.puts("""
          ---------     Resposta da Req #{req_id}
          """)
    after 500 ->
        IO.puts("Fim das respostas")
    end
    
  end

  def run reqs do
    IO.puts("Meu processo #{inspect(self())}")
    Enum.each(1..reqs,
      fn req_id -> 
        Node.spawn(:"noded@elly" , AppTest, :task, [req_id, self()])
        api()
      end
    )
  end
end
