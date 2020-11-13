defmodule Tetris.Tetromino do
  @moduledoc false

  alias Tetris.Point

  defstruct shape: :l, rotation: 0, location: {5, 1}

  def new(options \\ []) do
    __struct__(options)
  end

  def new_random do
    new(shape: random_shape())
  end

  def left(tetromino) do
    %{tetromino | location: Point.left(tetromino.location)}
  end

  def right(tetromino) do
    %{tetromino | location: Point.right(tetromino.location)}
  end

  def down(tetromino) do
    %{tetromino | location: Point.down(tetromino.location)}
  end

  def rotate(tetromino) do
    %{tetromino | rotation: rotate_degrees(tetromino.rotation)}
  end

  defp rotate_degrees(270), do: 0

  defp rotate_degrees(n), do: n + 90

  defp random_shape do
    ~w[i t o l j z]a
    |> Enum.random()
  end
end
