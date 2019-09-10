class PigLatinizer

  def piglatinize str
    vowels = ['a','e','i','o','u',"A","E","I","O","U"]
    suffix = "ay"
    new_word = ""

      if !vowels.include?(str[0]) && !vowels.include?(str[1])
        if str[-1] == "y" && str[-2] == "a"
          new_word = suffix + str
        else
        new_word = str[2..-1]+str[0..1]+suffix
        end
      elsif !vowels.include?(str[0])
        new_word = str[1..-1]+str[0]+suffix
      elsif vowels.include?(str[0])
        new_word = str+"way"
      end
     new_word
   end

   def to_pig_latin str
     str.split.collect {|word| piglatinize(word)}.join(" ")
   end
end
