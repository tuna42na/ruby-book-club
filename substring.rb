array = ["hel", "lo", "the", "e"]
string = "HeLlo There old Friend!"
def createMap(array)
  hashMap = Hash.new
  for word in array
    hashMap[word] = 0
  end
  hashMap
end

def subStringChecker(hashmap, stringArray)
  keys = hashmap.keys
  for key in keys
    for string in stringArray
      if string.upcase.match(/#{key.upcase}/)
        hashmap[key] += string.upcase.scan(/#{key.upcase}/).size
      end  
    end
  end  
  puts hashmap
end 

def substring(string, dictionary)
  hashMap = createMap(dictionary)
  strings = string.split
  subStringChecker(hashMap, strings)
end

substring(string, array)