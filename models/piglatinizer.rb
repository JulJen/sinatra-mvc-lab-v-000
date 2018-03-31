require 'pry'

class PigLatinizer

  def piglatinize(str)
    if str.split(" ").count == 1
      translate_piglatinize(str)
    else
      pig_latin(str)
    end
  end

  def translate_piglatinize(word)
    a = ('a'..'z').to_a
    v = %w[a e i o u A E I O U]
    c = a - v

    if c.include?(word[0].downcase) && c.include?(word[1]) && c.include?(word[2])
      word[3..-1] + word[0..2] + 'ay'
    elsif c.include?(word[0].downcase) && c.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif c.include?(word[0].downcase)
      word[1..-1] + word[0] + 'ay'
    else
      word + 'way'
    end
  end


  def pig_latin(str)
    str.split.map {|word| translate_piglatinize(word)}.join(" ")
  end

end
