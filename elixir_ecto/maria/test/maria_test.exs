defmodule MariaTest do
  use ExUnit.Case
  doctest Maria

  test "greets the world" do
    assert Maria.hello() == :world
  end
end
