class PigLatinizer

  def piglatinize(word)
    vowels = ['a','e','i','o','u']
    consonants = ("a".."z").to_a.delete_if{|l| vowels.include?(l)}
    word = word.split('')
    if vowels.include?(word[0].downcase)
      word << 'w'
    elsif consonants.include?(word[0].downcase)
      while consonants.include?(word[0].downcase)
        fl = word.shift
        word << fl
      end
    end
    word.join << "ay"
  end


  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
