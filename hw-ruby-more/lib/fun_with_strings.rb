module FunWithStrings
  def palindrome?

    #converts the entered str to all lowercase
    str=self.downcase.gsub /[^a-z0-9]+/i, ''

    #checks to see if the reverse of the string equals the string
    str==str.reverse
    
  end
  def count_words
    h=Hash.new(0)
    #converts the entered str to all lowercase
    str=self.downcase.gsub /[^a-z0-9 ]+/i, ''

    #splits string into words. If the word is already in the list it adds one to the hash.
    str.split.each{ |x| h[x]=h[x]+1}

    #returns the hash
    return h
  end
  def anagram_groups
    #downcase makes all the letters lower case
    #split splits the entered string into words
    #compare words in the str to see if they are anagrams or not
    str=self.downcase.split.group_by{ |x| x.chars.sort }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
