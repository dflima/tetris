defmodule Tetris.Point do
  @moduledoc """
  Module that represents a point inside the game board.
  """

  @doc """
  Point constructor.
  Returns the initial position of {0, 0}

  ## Examples

      iex> Tetris.Point.origin()
      {0, 0}
  """
  @spec origin() :: {Integer.t(), Integer.t()}
  def origin do
    {0, 0}
  end

  @doc """
  Moves a point one tilt to the left.

  ## Examples

      iex> Tetris.Point.origin() |> Tetris.Point.left()
      {-1, 0}
  """
  @spec left({Integer.t(), Integer.t()}) :: {Integer.t(), Integer.t()}
  def left({x, y}) do
    {x - 1, y}
  end

  @doc """
  Moves a point one tilt to the right.

  ## Examples

      iex> Tetris.Point.origin() |> Tetris.Point.right()
      {1, 0}
  """
  @spec right({Integer.t(), Integer.t()}) :: {Integer.t(), Integer.t()}
  def right({x, y}) do
    {x + 1, y}
  end

  @doc """
  Moves a point one tilt down.

  ## Examples

      iex> Tetris.Point.origin() |> Tetris.Point.down()
      {0, 1}
  """
  @spec down({Integer.t(), Integer.t()}) :: {Integer.t(), Integer.t()}
  def down({x, y}) do
    {x, y + 1}
  end
end