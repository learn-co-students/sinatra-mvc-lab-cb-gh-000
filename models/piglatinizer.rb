class PigLatinizer

  def piglatinize(word)
    piglatinized_word = word

    case piglatinized_word.downcase[0..2]
    when /thr/, /sch/, /spr/, /str/, /[^aeiou]qu/
      piglatinized_word << piglatinized_word[0..2]
      piglatinized_word = piglatinized_word[3..-1]
    when /ch./, /qu./, /th./, /br./, /pl./, /pr./, /sk./, /wh./
      piglatinized_word << piglatinized_word[0..1]
      piglatinized_word = piglatinized_word[2..-1]
    when /^[aeiou]/
      piglatinized_word << "w"
    when /[^aeiou]/
      piglatinized_word << piglatinized_word[0]
      piglatinized_word = piglatinized_word[1..-1]
    end

    piglatinized_word << "ay"
  end

  def to_pig_latin(sentence)
    words = sentence_to_words(sentence)
    piglatinized_words = words.map {|word| piglatinize(word)}
    words_to_sentence(piglatinized_words)
  end

  def sentence_to_words(sentence)
    sentence.split(" ")
  end

  def words_to_sentence(words)
    words.join(" ")
  end
end