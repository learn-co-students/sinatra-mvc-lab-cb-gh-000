class PigLatinizer
  attr_accessor :text
  def initialize(text="")
    @text = text
  end
  def piglatinize(word)
    tmp = word.index(/[aeiouAEIOU]/)
    if tmp == 0
      word+"way"
    else
      word[tmp..-1]+word[0..(tmp-1)]+"ay"
    end
  end
  def to_pig_latin(text)
    out = ""
    text.split(' ').each do |word|
      out+=piglatinize(word)
      out+=" "
    end
    out[0..(out.length-2)]
  end
end
