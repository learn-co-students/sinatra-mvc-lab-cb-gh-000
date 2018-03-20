class PigLatinizer

@@consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
@@vowels = %w[a e i o u]

  def to_piglatin(word)
    word = word.split('')
    if @@vowels.include?(word[0].downcase)
      word = word << 'w'
    end
    if @@consonants.include?(word[0].downcase)
      while @@consonants.include?(word[0].downcase)
        word = word.rotate(1)
      end
    end
    word.join('') << 'ay'
  end

  def piglatinize(string)
    string.split.collect { |word| to_piglatin(word) }.join(" ")
  end

end
