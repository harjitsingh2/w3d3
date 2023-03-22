def range(start, ends)
    arr = []
    
    return [] if ends < start
    return [ends-1] if (start + 1 == ends)

    
    y = range(start+1, ends)
    arr = [start] + y
end

# p range(1,5)

