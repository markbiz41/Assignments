#paste code below
class PigLatin
  VOWELS =  %w(a e i o u)

  def self.pigatize(a)

    # Check to see if the first letter is a vowel, if not it's a consonant
    if PigLatin.starts_with_vowel(a[0])
      # this is placeholder code and should take action based on it starting with a vowel
      pigatized_text = a + "way"
    else
      # this is placeholder code and should take action based on it starting with a consonant
      pigatized_text = a[1..-1] + a[0] + "ay"
    end
    return pigatized_text
  end

  # Check to see if the first letter is a vowel
  def self.starts_with_vowel(first_letter)
    return VOWELS.include?(first_letter)
    # this should determine if it starts with a vowel
  end
end

puts "Please enter a sentence and I will translate to pig latin"
text = gets.chomp
words = text.split()
results = ""
for i in 0..words.length-1
  results = results + PigLatin.pigatize(words[i]) + " "
end
puts "Pigatize: #{results}"
