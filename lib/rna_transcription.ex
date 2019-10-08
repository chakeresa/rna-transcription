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
    |> Enum.map(fn dna_char ->
      rna_char(dna_char)
    end)
    |> List.flatten()
  end

  @spec rna_char(dna_char :: char) :: char
  defp rna_char(dna_char) do
    case dna_char do
      ?G -> ?C
      ?C -> ?G
      ?T -> ?A
      ?A -> ?U
      _ -> ''
    end
  end
end
