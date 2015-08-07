
module Ex25
    def self.break_words(stuff)
        # This function will break up words for you
        stuff.split(' ')
    end

    def self.sort_words(words)
        # This function will sort words for you
        words.sort
    end

    def self.print_first_word(words)
        # Prints the first word and shift the others down by one
        puts words.shift
    end

    def self.print_last_word(words)
        # Prints the last word after popping it off the end
        puts words.pop
    end

    def self.sort_sentence(sentence)
        # Takes in a full sentence and returns the sorter words
        sort_words(break_words(sentence))
    end

    def self.print_first_and_last(sentence)
        # Prints the first and last words of a sentence
        words = break_words(sentence)
        print_first_word(words)
        print_last_word(words)
    end

    def self.print_first_and_last_sorted(sentence)
        words = sort_sentence(sentence)
        print_first_word(words)
        print_last_word(words)
    end
end