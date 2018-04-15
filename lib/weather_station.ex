defmodule WeatherStation do
  @temperature_file "/sys/bus/w1/devices/28-03168aa9f7ff/w1_slave"

  def temperature do
    File.stream!(@temperature_file)
    |> Enum.to_list
    |> List.last
    |> String.split
    |> List.last
    |> String.split("=")
    |> List.last
    |> String.to_integer
    |> Kernel./(1000.0)
    |> IO.inspect
  end
end
