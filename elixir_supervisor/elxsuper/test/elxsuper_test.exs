defmodule ElxsuperTest do
  use ExUnit.Case
  doctest Elxsuper

  test "greets the world" do
    assert Elxsuper.hello() == :world
  end
end
