defmodule Examples.Board do
  # NOTE
  # This only accepts player :x for now
  # and returns :draw, only if all values of the tuple is a boolean.
  # Literally just reused Benjamin's code.
  # Will improve this later.

  @doc """
  Checks if board is completed, draw or in progress.

  ## Examples

      iex> Examples.Board.check({ :x, :x, :x, :y, :y, :y, :y, :y, :y})
      :x_win

      iex> Examples.Board.check({ :y, :x, :x, :y, :y, :y, :y, :y, :y})
      :in_progress
  """
  def check(board) do
    case board do
      { :x, :x, :x,
       _ , _ , _,
       _ , _ , _ } -> :x_win

      { _ , _ , _,
        :x, :x, :x,
        _ , _ , _ } -> :x_win

      { :x, _ , _,
        :x, _ , _ ,
        :x, _ , _ } -> :x_win

      { _ , :x , _,
        _ , :x , _ ,
        _ , :x , _ } -> :x_win

      { _ , _ , :x,
        _ , _ , :x ,
        _ , _ , :x } -> :x_win

      { :x, _ , _,
        _ , :x, _ ,
        _ , _ , :x } -> :x_win

      { _ , _ , :x,
        _ , :x, _ ,
        :x , _ , _ } -> :x_win

      # NOTE
      # This clause will only evaluate if all items in the tuple is a boolean
      # Kernel.and/1 accepts only boolean values.
      { a, b, c,
        d, e, f,
        g, h, i } when a and b and c and d and e and f and g and h and i -> :draw

      _patterns ->  :in_progress
    end
  end
end
