defmodule NatalTest do
  use ExUnit.Case
  doctest Natal

  test "greets the world" do
    assert Natal.hello() == :world
  end
end
