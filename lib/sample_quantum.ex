defmodule SampleQuantum do

  require Logger

  def main(args) do
    Logger.info("hello") 

    loop(0)
  end

  def say_hello() do
    try do
      Logger.info("Hello!")
      raise SampleError

      raise("unreachable code")

    rescue 
      e in RuntimeError ->
        Logger.info(e.message)
    end
  end

  def loop(i) do
    :timer.sleep(30000)
    Logger.info(i)

    loop(i+1)
  end
end
