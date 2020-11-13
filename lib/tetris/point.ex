defmodule Tetris.Point do
  @moduledoc """
  Module that represents a point inside the game board.
  """

  def origin do
    {0, 0}
  end

  def left({x, y}) do
    {x - 1, y}
  end

  def right({x, y}) do
    {x + 1, y}
  end

  def down({x, y}) do
    {x, y + 1}
  end
end
