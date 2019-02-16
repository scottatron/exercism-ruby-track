module Acronym
  def self.abbreviate(phrase)
    phrase.scan(/(?=\w)\b./).join.upcase
  end
end
