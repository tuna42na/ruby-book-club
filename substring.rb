dictionary = ["hel", "lo", "the", "e"]
string = "HeLlo There old Friend!"

def subStringChecker(dictionary, stringArray)
  hashMap = Hash.new
  for key in dictionary
    for string in stringArray
      if string.upcase.match(/#{key.upcase}/)
        hashMap[key] = string.upcase.scan(/#{key.upcase}/).size
      end  
    end
  end  
  puts hashMap
end 

def substring(string, dictionary)
  strings = string.split
  subStringChecker(dictionary, strings)
end

substring(string, dictionary)