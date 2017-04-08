class PigLatinizer

  def initialize
    @vowels = "aeouiAOEUI"
  end

  def piglatinize word
    if @vowels.include?(word[0])
      return word+"way"
    else
      unvowels =""
      until @vowels.include?(word[0])
        unvowels+=word[0]
        word = word[1..(-1)]
      end
      return word+unvowels+"ay"
    end
  end

  def to_pig_latin phrase
    phrase.split(" ").map{|word| piglatinize word}.join(" ")
  end
end
