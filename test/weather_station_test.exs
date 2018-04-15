defmodule WeatherStationTest do
  use ExUnit.Case

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "temperature" do
    IO.puts WeatherStation.temperature
  end
end
