
class PigLatinizer

  def piglatinize(text)
    words = text.split(" ")

    translated = words.collect do |word|
      if word.match(/^[aeiou]/i)
        word = word + "way"
      else
        reordered = []
        while !word.match(/^[aeiou]/i)
          reordered << word[0]
          word[0] = ""
        end
        word + reordered.join("") + "ay"
      end
    end
    translated.join(" ")
  end


end
