class PigLatinizer

  def begin_with_vowels?(word)
    !!word[0].match(/[aeiouyAEIOUY]/)
  end

  def piglatinize(word)
    if begin_with_vowels?(word)
      word + "way"
    else
      i = 0
      while !word[i].match(/[aeiouyAEIOUY]/)
        i += 1
      end
      word[i..-1]+word[0..i-1]+"ay"
    end
  end

  def to_pig_latin(sentence)
    words = sentence.split(" ")
    words.map do |word|
      piglatinize(word)
    end.join(" ")
  end

end