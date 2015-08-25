class Complement
  VERSION = 1

  DNA_COMPLEMENTS = {
    "A" => "U",
    "C" => "G",
    "G" => "C",
    "T" => "A"
  }

  RNA_COMPLEMENTS = DNA_COMPLEMENTS.invert

  def self.of_dna(dna)
    transcription(complements: DNA_COMPLEMENTS, strand: dna)
  end

  def self.of_rna(rna)
    transcription(complements: RNA_COMPLEMENTS, strand: rna)
  end

  def self.transcription(complements:, strand:)
    strand.chars.inject("") do |accumlator, letter|
      accumlator + complements.fetch(letter)
    end
  rescue KeyError => exception
    raise ArgumentError, exception.message
  end
end
