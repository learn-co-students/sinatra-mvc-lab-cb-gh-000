class PigLatinizer
  def piglatinize(word)
    if word[0].match(/[aeiouAEIOU]/)
      word + "way"
    else
      ind = 1
      word.scan(/([^aeiouAEIOU])|([aeiouAEIOU])/).each_with_index do |m, i|
        if m[0].nil?
          ind = i
          break
        end
      end
      word[ind..-1] + word[0..(ind - 1)] + "ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect { |word| self.piglatinize(word) }.join(" ")
  end
end
