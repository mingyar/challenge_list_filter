defmodule ChallengeListFilter do
  require Integer

  def call(list) do
    list
    |> only_numbers()
    |> only_odds()
    |> count()
  end

  defp only_numbers(list) do
    list |> Enum.flat_map(fn x ->
                    case Integer.parse(x) do
                      {int, _rest} -> [int]
                      :error -> []
                    end
                  end)
  end

  defp only_odds(list) do
    list |> Enum.filter(fn x -> Integer.is_odd(x) end)
  end

  defp count(list) do
    list |> Enum.count()
  end
end
