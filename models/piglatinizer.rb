class PigLatinizer

  def is_vowel?(letter)
    letter =~ /[AEIOUaeiou]/
  end

  def find_first_vowel(word)
    i = 0
    word.each_char do |letter|
      if is_vowel?(letter)
        return i
      end
      i += 1
    end
    nil
  end

  def piglatinize(text)
    piglatinized = []
    words = text.split(" ")
    words.each do |word|
      piglatinized << translate_word(word)
    end
    piglatinized.join(" ")
  end

  def translate_word(word)
    result = ""
    if is_vowel?(word[0])
      result = "#{word}way"
    else
      if is_vowel?(word[1])
        result = "#{word.slice(1..-1)}#{word[0]}ay"
      else
        first_vowel_index = find_first_vowel(word)
        result = "#{word.slice(first_vowel_index..-1)}#{word.slice(0..(first_vowel_index -1))}ay"
      end
    end
    result
  end
end
