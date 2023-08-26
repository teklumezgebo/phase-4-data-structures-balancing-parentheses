require_relative './stack'

def balancing_parentheses(string)
    
    # new instance
    stack = Stack.new

    # counting how many of each there are
    open_paren = 0
    closed_paren = 0

    # seperating characters in string and adding them to @stack 
    string.chars.each do |char|
        stack.push(char)
    end

    # checking if there are enough pairs to close

    while stack.size > 0
        value = stack.peek
        if value == "("
            stack.pop
            closed_paren += 1
        elsif value == ")"
            stack.pop
            open_paren +=1
        end
    end

    if closed_paren > open_paren
        return closed_paren - open_paren
    elsif open_paren > closed_paren
        return open_paren - closed_paren
    else
        return 0
    end


end