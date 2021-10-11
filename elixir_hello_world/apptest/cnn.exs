defmodule Cnn do
  def api do
    IO.puts("""
      Aguardando receber msg
      Node #{Node.self()}
      Process #{inspect self()}
      """)
    receive do
      {:msg, msg} ->
        IO.puts(msg)
    end
  end

  def run do
    Node.spawn(:"nodeb@elly", Cnn, :run, [])
  end
end

