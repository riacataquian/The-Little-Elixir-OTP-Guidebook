defmodule Examples.Flatten do
  @doc """
  Works like List.flatten/1.
  Leverages Elixir's pattern-maching during recursions.

  ## Examples:

      iex> Examples.Flatten.run([1, [2, [3]]])
      [1, 2, 3]


      iex> Examples.Flatten.run([1 | [2 | [3 | [4]]]])
      [1, 2, 3, 4]

      iex> Examples.Flatten.run([1])
      [1]
  """
  # A list's tail will always be a list.
  def run([]), do: []

  def run([ head | tail ]) do
    run(head) ++ run(tail)
  end

  def run(head), do: [ head ]
end
