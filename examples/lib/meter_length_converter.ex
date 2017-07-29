defmodule Examples.MeterLengthConverter do
  @moduledoc """
  Documentation for Examples.MeterLengthConverter which presents:
  1. Elixir modules can be nested to another module.
  2. Functions are referred by its name and arity (the number of arguments it accepts.)
  3. It is possible to pattern-match on function heads.
  4. Use of guard clauses.
  """

  defmodule Feet do
    @doc """
    Converts meters to feet.
    Module Feet is nested under Examples.MeterLengthConverter.
    We will access it via the dot notation.

    ## Examples

        iex> Examples.MeterLengthConverter.Feet.convert(2.72)
        8.9238848
    """
    def convert(m), do: m * 3.28084
  end

  defmodule Inch do
    @doc """
    Converts meters to inches.
    Module Inch is nested under Examples.MeterLengthConverter.
    We will access it via the dot notation.

    ## Examples

        iex> Examples.MeterLengthConverter.Inch.convert(2.72)
        107.08667200000001
    """
    def convert(m), do: m * 39.3701
  end

  defmodule Yard do
    @doc """
    Converts meters to inches.
    Module Yard is nested under Examples.MeterLengthConverter.
    We will access it via the dot notation.

    ## Examples

    iex> Examples.MeterLengthConverter.Yard.convert(2.72)
    2.9746192000000002
    """
    def convert(m), do: m * 1.09361
  end

  @doc """
  convert/2 accepts two arguments: the unit and the m.

  ## Examples

      iex> Examples.MeterLengthConverter.convert(:feet, 2.72)
      8.9238848

      iex> Examples.MeterLengthConverter.convert(:inch, 2.72)
      107.08667200000001

      iex> Examples.MeterLengthConverter.convert(:yard, 2.72)
      2.9746192000000002

      iex> Examples.MeterLengthConverter.convert(:unknown_unit, 2.72)
      "Invalid number"

      iex> Examples.MeterLengthConverter.convert(:yard, "some invalid number")
      "Invalid number"
  """
  def convert(:feet, m) when is_number(m) and m >= 0, do: m * 3.28084
  def convert(:inch, m) when is_number(m) and m >= 0, do: m * 39.3701
  def convert(:yard, m) when is_number(m) and m >= 0, do: m * 1.09361
  def convert(_unit, _m), do: IO.inspect "Invalid number"
end
