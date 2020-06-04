def caesar_cipher(text, shift)
    result = ""
    text.split().each do |ite|
        
        #Treates each word at a time and then appends it to the result.
        
        result.concat(word_treater(ite, shift), " ")
    end
    return result
end

def word_treater (word, shift)
   
    letters = ("a".."z").to_a()
    word_treated = ""
    
    word.split("").each do |letter|
        isCapital = false
        # If the letter is capitalized then store the value
        if (letter == letter.upcase)
            isCapital = true
            letter.downcase!
        end

        # We need to wrapp the index in order to not go out of bounds.
        treatedIndex = wrapIndex(letters.index(letter) + shift)

        treated_letter = letters[treatedIndex]
        if isCapital == true
            treated_letter.upcase!
        end

        word_treated.concat(treated_letter)
    end
    return word_treated
end

def wrapIndex (index)
    return index % 26
end

puts caesar_cipher("Lets Try other THINGS ZZZ AAA b c de rff", 4)