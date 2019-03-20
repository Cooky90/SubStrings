def substrings(string,array)
    resultHash = {}

    array.each do |dict_word|
        size = string.scan(/#{Regexp.quote(dict_word)}/i).size 
        if size > 0
            resultHash[:"#{dict_word}"] = size 
        end
    end
    resultHash
    
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)