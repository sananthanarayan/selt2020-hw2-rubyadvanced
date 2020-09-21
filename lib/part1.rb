# One way to work on your code
# is to have a terminal  window open and an editor window with this
# file loaded.  Make changes to this file, save them, and then
# run 'ruby part1.rb' at the command line, this will run your program with
# the specified test cases.  You may want to add additional test cases to
# make sure that you have thoroughly tested your code.

# Alternatively, if you are confident with rspec syntax, you can add additional
# tests to the spec/part1_spec.rb file to thoroughly test your
# program and test it by typing:
# 'rspec spec/part1_spec.rb'

# You will need to be in the parent directory of the spec directory when
# you type this command.
# NOTE:  THE PROVIDED RSPEC TESTS ARE ONLY MINIMAL SANITY CHECKS TO INSURE
# THAT OUR AUTOMATED GRADER WILL BE ABLE TO GRADE YOUR SUBMISSION.  THEY DO
# NOT COMPREHENSIVELY TEST THE CORRECTNESS OF YOUR SOLUTION.
# Be absolutely certain that your code passes the rspec sanity checks before
# submitting it.  If it doesn't pass these sanity checks, our auto-grader will
# not be able to grade it.
#
# It is up to you to add sufficient test cases to this file (or additional rspec tests to
# the spec/part1_spec.rb file) to thoroughly test your program.
#
# When you are satisfied with your work, REMOVE THE TEST CASES and save your file.
# When you have completed all five parts of the assignment, follow the submission
# instructions specified in the assignment description to hand-in your work.

def palindrome?(str)
  # TODO: YOUR CODE HERE
  # HINT: Only consider the 26 letters of the alphabet as part of the palindrome.
  # All other characters should be ignored.

  # Used three ruby doc links to write this one line of code to check if the string is same forwards and backwards
  # https://ruby-doc.org/docs/ruby-doc-bundle/ProgrammingRuby/book/ref_c_string.html
  # https://ruby-doc.org/core-2.5.0/String.html#method-i-downcase
  # https://ruby-doc.org/core-2.6/String.html#method-i-reverse
  # Also used the reg expression \W since some expressions may have non-word characters and we want to accept those too
  str.gsub(/\W/,'').downcase == str.gsub(/\W/,'').downcase.reverse
end

def count_words(str)
  # TODO: YOUR CODE HERE
  # Used this link to figure out how to use hashes in ruby https://stackoverflow.com/questions/11992387/how-to-use-hash-in-ruby
  # Also used the each method instead of for loop to count the words in the hash
  # Used the begin and end block for code so the count words runs in a proper structure
  # I used the regexp \W to use nonword characters as the points where the string is split
  begin
    str.downcase! and str.gsub!(/\b\W+\b/,' ')
    count_word = str.split(/\W+/)
    word_as_hash = Hash.new(0)
    count_word.each{|i| word_as_hash[i] += 1}
    word_as_hash
  end
end

=begin
# the code below this line will test your functions.
# You should remove everything below this line prior to submitting your file

test_str = 'there goes the neighborhood'

if palindrome? test_str
  puts test_str + ' is a palindrome!'
else
  puts test_str + ' is NOT a palindrome!'
end

test_str = "Madam, I'm Adam"

if palindrome? test_str
  puts test_str + ' is a palindrome!'
else
  puts test_str + ' is NOT a palindrome!'
end

test_str = 'The rent is due on the first day of the month'\
           ' unless the first day of the month falls on a Saturday or Sunday'

word_count = count_words test_str
puts word_count
=end
