class PigLatinizer
  def piglatinize(word)
    matches = word.scan(/^([^aeiou]*)([aeiou].*)$/i).flatten
    suffix = if !matches[0].empty?
               matches[0] + "ay"
             else
               "way"
             end
    matches[1] + suffix
  end

  def to_pig_latin(sentence)
    sentence.split(" ").map { |e| piglatinize(e) }.join(" ")
  end
end
