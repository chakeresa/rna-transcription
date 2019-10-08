defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> to_string()
    |> String.graphemes()
    |> Enum.map(fn dna_char ->
      rna_char(dna_char)
      |> Kernel.to_charlist()
    end)
    |> List.flatten()
  end

  # @spec rna_char(dna_char :: binary) :: binary()
  defp rna_char(dna_char) do
    case dna_char do
      "G" -> "C"
      "C" -> "G"
      "T" -> "A"
      "A" -> "U"
      _ -> ""
    end
  end
end
