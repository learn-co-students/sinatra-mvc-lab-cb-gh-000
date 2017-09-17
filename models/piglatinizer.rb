class PigLatinizer

  # this should piglatinize one word
  def piglatinize(word)

    if starts_with_a_vowel?(word)
      piglatinize_vowel_word(word)
    else
      piglatinize_consonant_word(word)
    end
    # When words begin with consonant clusters
    #(multiple consonants that form one sound),
    # the whole sound is added to the end when speaking or writing
  end

  def starts_with_a_vowel?(word)

    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    vowels.any? { |c| c == word[0]}

  end


  # "cheers" = "eerschay"
  # For words that begin with vowel sounds,
  # one just adds "way"
  # "eat" = "eatway"

  def piglatinize_vowel_word(word)
    word + "way"
  end

  # For words that begin with consonant sounds,
  # all letters before the initial vowel are placed
  #at the end of the word sequence. Then, "ay" is added
  # "pig" = "igpay"

  def piglatinize_consonant_word(word)

    # "hello".split(//) #=> ["h", "e", "l", "l", "o"]
    word_as_array = word.split(//)

    # return index of first vowel
    first_vowel_index = word_as_array.each_index.detect{|i| starts_with_a_vowel?(word_as_array[i])}

    # split at that the index of the first vowel
    word[first_vowel_index...word.length] + word[0...first_vowel_index] + "ay"

  end

  # this should turn split a sentence to piglatinize each word
  # TODO this function is so ugly there must be a better way...
  def to_pig_latin(text)

    my_sentence = ""

    word_array = text.split(" ")

    word_array.each_with_index do |word, index|

      if index < word_array.length - 1
          my_sentence = my_sentence + piglatinize(word) + " "
      else
        my_sentence = my_sentence + piglatinize(word)
      end
    end

    my_sentence

  end

end
