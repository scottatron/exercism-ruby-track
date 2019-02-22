class Complement
  def self.of_dna(dna_strand)
    dna_strand.tr "GCTA", "CGAU"
  end
end
