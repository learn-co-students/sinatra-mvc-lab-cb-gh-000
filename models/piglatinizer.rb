class PigLatinizer

  def piglatinize(word)
    if word[0].match(/[aeiouAEIOU]/)
      word + "way"
    else
      index = 1
      word.scan(/([^aeiouAEIOU])|([aeiouAEIOU])/).each_with_index do |m, i|
        if m[0] == nil
          index = i
          break 
        end
      end
      word[index..-1] + word[0..(index - 1)] + "ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect do |word|
      self.piglatinize(word)
    end.join(" ")
  end

end