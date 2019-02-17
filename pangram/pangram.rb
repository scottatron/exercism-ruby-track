module Pangram
  def self.pangram?(sentence)
    ("a".."z").to_a.difference(sentence.downcase.chars).empty?
  end
end
