class PigLatinizer

  # piglatinize a single word
  def piglatinize(word)

    if starts_with_a_vowel?(word)
      piglatinize_vowel_word(word)
    else
      piglatinize_consonant_word(word)
    end
  end

  def starts_with_a_vowel?(word)

    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    vowels.any? { |c| c == word[0]}

  end

  def piglatinize_vowel_word(word)
    word + "way"
  end

  def piglatinize_consonant_word(word)

    # for some reason this breaks if my word is all consonants
    # "hello".split(//) #=> ["h", "e", "l", "l", "o"]
    word_as_array = word.split(//)

    # piglatinize words that start with consontant and have a vowel
    if first_vowel_index = word_as_array.each_index.detect do |i|
        starts_with_a_vowel?(word_as_array[i])
      end
      word[first_vowel_index...word.length] + word[0...first_vowel_index] + "ay"

      # piglatinize words that are just consonants
    else
      word + "ay"
    end

    # split word at that the index of the first vowel, copy part of word
    # before first vowel to the end of the word
    #word[first_vowel_index...word.length] + word[0...first_vowel_index] + "ay"

  end

  # TODO this function is so ugly there must be a better way...
  # currently breaks for words that are just consonants
  def to_pig_latin(text)

    my_sentence = ""

    word_array = text.split(" ")

    word_array.each_with_index do |word, index|

      if word_array.length == 1
        my_sentence = piglatinize(word)
      elsif  index < word_array.length - 1
        my_sentence = my_sentence + piglatinize(word) + " "
      else
        my_sentence = my_sentence + piglatinize(word)
      end
    end

    my_sentence

  end

end


# translate = PigLatinizer.new
# translate.to_pig_latin("j")
