require 'pry'

class PigLatinizer
  # attr_reader :text

  def translate(str)
# binding.pry
    if str.split(" ").count == 1
      piglatinize(str)
    else
      pig_latin(str)
    end
  end

  def piglatinize(word)
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
# binding.pry
    str.split.map {|word| piglatinize(word)}.join(" ")
  end

end
