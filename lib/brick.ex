defmodule Tetris.Brick do
  defstruct  [
    name: :i,
    location: {40, 0},
    rotation: 0,
    reflection: false
  ]

  # def new() do
  #   __struct__
  # end

  def new(), do: __struct__()

  def new_random() do
    %__MODULE__{
      name: random_name(),
      location: {40, 0},
      rotation: random_rotation(),
      reflection: random_reflection()
    }
  end

  def random_name() do
    #sigil = same as having an array of values
    ~w(i l z o t)a
    # |> = pipeing ... all the next funciton with the previous argument
    # Insert anonymous functions into your pipe chains
    |> Enum.random
  end

  def random_reflection() do
    [true, false]
    |> Enum.random
  end

  def random_rotation() do
    [0, 90, 180, 270]

    |> Enum.random
  end

#since these functions take in and return the same thing ... a brick ... they are called reducers.

  def down(brick) do
    %{brick| location: point_down(brick.location)}
  end

  def left(brick) do
   %{brick| location: point_left(brick.location)}
  end

  def right(brick) do
   %{brick| location: point_right(brick.location)}
  end

  def point_down({x, y}) do
    #move point down
    {x, y}
  end

  def point_left({x, y}) do
    {x-1, y+1}
  end

  def point_right({x, y}) do
    {x+1, y}
  end

  def spin_90(brick) do
    %{brick| rotation: rotate(brick.rotation)}
  end

  def rotate(270), do: 0
  def rotate(degrees), do: degrees + 90

end
