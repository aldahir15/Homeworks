def anagram?(word1,word2)
  tot = (word1+word2).chars.map{|x| x.ord}
  tot.inject(:^) == 0
end
