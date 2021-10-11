defmodule ApptestTest do
  use ExUnit.Case
  doctest Apptest

  test "greets the world" do
    assert Apptest.hello() == :world
  end
end
