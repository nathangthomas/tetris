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
    |> Enum.map(fn {x, y} -> {5 - x, y} end )
  end

  def flip (points) do
    points
    |> Enum.map(fn {x, y} -> {x, 5 - y} end )
  end

  def rotate_90(points) do
    points
    |> transpose
    |> mirror
  end

  def rotate(points, 0), do: points
  def rotate(points, degrees) do
    rotate(
      rotate_90(points),
      degrees - 90
      )
  end

  #defp is how you define private methods
  # defp traspose_point({x,y}), do:{y, x}
  # defp mirror_point({x,y}), do: {4-x, y}
  # defp flip_point({x,y}), do: {x, 4-y}
  #
end
