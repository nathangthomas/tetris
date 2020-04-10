defmodule Tetris.Points do
  def translate(points, {x, y}) do
    Enum.map(points, fn {dx, dy} -> {dx + x, dy + y} end  )
  end

  def transpose(points) do
    points
    |> Enum.map(fn {x, y} -> {y, x} end )
  end

  def mirror (points) do
    points
    |> Enum.map(fn {x, y} -> {4 - x, y} end )
  end

  def flip (points) do
    points
    |> Enum.map(fn {x, y} -> {x, 4 - y} end )
  end

  def rotate_90(points) do
    points
    |> transpose
    |> mirror
  end


  #defp is how you define private methods
  # defp traspose_point({x,y}), do:{y, x}
  # defp mirror_point({x,y}), do: {4-x, y}
  # defp flip_point({x,y}), do: {x, 4-y}
  #
end
