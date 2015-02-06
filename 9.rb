=begin
Write a Ruby script to do the following:

1. Take the string "Hello World" and split it on whitespace. Show two ways to do this.
2. Use the Peter Piper tongue twister and split it on 'pick'
3. Use gsub only to change the first passage to the second in the fewest amount of commands:

Original: "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."

Result: "I have brains in my head. I have feet in my shoes. I can steer myself any direction I choose. I'm on my own. And I know what I know. And I'M the one who'll decide where to go..."

4. Write code to determine how many times 'sh' occurs in the following phrase:

There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!

5. In the same phrase above, how many times does 'sh' occur when followed by an 'o'? Show the code.

6. Match the word foot but not football in this phrase: "He played football despite having an artificial foot.""
7. Match the last sits in a phrase using this phrase: "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."
=end

# Exercise 1
puts "Hello World".split
puts "Hello World".split(/ /)

#Exercise 2
puts "Peter Piper picked a peck of pickled peppers".split('pick')

#Exercise 3
#Result: "I have brains in my head. I have feet in my shoes. I can steer myself any direction I choose. I'm on my own. And I know what I know. And I'M the one who'll decide where to go..."
puts "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go...".gsub!(/You(?= )/i, "I").gsub!(/your/, "my").gsub!(/You're/, "I'm").gsub!(/I are/, "I'M")

#Exercise 4
#4. Write code to determine how many times 'sh' occurs in the following phrase:
puts "There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!".scan(/sh/).count

#Exercise 5
#In the same phrase above, how many times does 'sh' occur when followed by an 'o'? Show the code.
puts "There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!".scan(/sho/).count

#Exercise 6
#6. Match the word foot but not football in this phrase: "He played football despite having an artificial foot.
s ="He played football despite having an artificial foot."
my_match = /foot/.match(s)
puts my_match

#Exercise 7
#7. Match the last sits in a phrase using this phrase: "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."
sentence = "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."
sentence.match /^sits/ 
