# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"

class PigLatin
  VOWELS =  %w(a e i o u)

  def self.pigatize(passed_text)

    # Check to see if the first letter is a vowel, if not it's a consonant
    if PigLatin.starts_with_vowel(passed_text[0])
      passed_text[0] == letter["a"]
      passed_text[0] == letter["e"]
      passed_text[0] == letter["i"]
      passed_text[0] == letter["o"]
      passed_text[0] == letter["u"]
      # this is placeholder code and should take action based on it starting with a vowel
      pigatized_text = passed_text
    else
      # this is placeholder code and should take action based on it starting with a consonant
      passed_text[0] == !letter["a"]
      passed_text[0] == !letter["e"]
      passed_text[0] == !letter["i"]
      passed_text[0] == !letter["o"]
      passed_text[0] == !letter["u"]
      pigatized_text = passed_text
    end
    return pigatized_text
  end

  # Check to see if the first letter is a vowel
  def self.starts_with_vowel(first_letter)
    if self.starts_with_vowel(first_letter)
    # this should determine if it starts with a vowel
    return first_letter
  end
end

puts "Please enter a word and I will translate to pig latin"
text = gets.chomp.split()
passed_text = text
if passed_text[0] == ["a", "e", "i", "o", "u"]
  print passed_text + ["way"]
else
  print passed_text + ["ay"]
end
end
