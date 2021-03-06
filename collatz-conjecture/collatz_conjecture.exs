defmodule CollatzConjecture do
  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(number :: pos_integer) :: pos_integer
  def calc(input) when is_integer(input) and input > 0 do
    calc(input, 0)
  end

  defp calc(1, step), do: step

  defp calc(input, step) when rem(input, 2) === 0 do
    calc(div(input, 2), step + 1)
  end

  defp calc(input, step) do
    calc(input * 3 + 1, step + 1)
  end
end
