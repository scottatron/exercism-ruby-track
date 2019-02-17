class Complement
  def self.of_dna(dna_strand)
    DNA_TO_RNA.values_at(*dna_strand.chars).join
  end

  private

  DNA_TO_RNA = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }.freeze
end
