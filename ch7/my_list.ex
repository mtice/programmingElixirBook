defmodule MyList do

  def mapsum([], _funk) do
    []
  end

  def mapsum([h | t], funk) do
    funk(h) + mapsum(t, funk)
  end

  def max([]) do
    nil
  end

  def max([h | t]) do
    p_max(t, h)
  end

  defp p_max([], max) do
    max
  end

  defp p_max([h | t], max) when h > max do
    p_max(t, h)
  end

  defp p_max([h | t], max) when h <= max do
    p_max(t, max)
  end

  def ceaser([], _) do
    []
  end

  @length_of_alphabet = 26
  def ceaser([h | t], n) when (h + n) > ?z do
    [(h + n) - @length_of_alphabet | ceaser(t, n)]
  end

  def ceaser([h | t], n) do
    [(h + n)| ceaser(t, n)]
  end


  def span(from , from) do
    [from]
  end

  def span(from, to) do
    [from | span(from + 1, to)]
    # [from] ++ [ span(from + 1, to)]
  end

end
