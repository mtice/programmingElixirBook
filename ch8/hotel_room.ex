defmodule HotelRoom do

  @people [
    %{ name: "Grumpy", height: 1.24 },
    %{ name: "Dave", height: 1.88 },
    %{ name: "Dopey", height: 1.32 },
    %{ name: "Shaquille", height: 2.16 },
    %{ name: "Sneezy", height: 1.28 }
  ]

  # handled all in 1 function
  def book_case(%{name: name, height: height} = person) do
    cond do
      height > 1.9 ->
        IO.puts "Need extra-long bed for #{name}"
      height < 1.3 ->
        IO.puts "Need low shower controls for #{name}"
      true ->
        IO.puts "Need regular bed for #{name}"
    end
  end


  # matching sigs
  def book(%{name: name, height: height}) when height > 1.9 do
    IO.puts "Need extra-long bed for #{name}"
  end

  def book(%{name: name, height: height}) when height < 1.3 do
    IO.puts "Need low shower controls for #{name}"
  end

  def book(person) do
    IO.puts "Need regular bed for #{person.name}"
  end


end


