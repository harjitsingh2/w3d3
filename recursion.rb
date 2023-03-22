def range(start, ends)
    arr = []
    
    return [] if ends < start
    return [ends-1] if (start + 1 == ends)

    
    y = range(start+1, ends)
    arr = [start] + y
end

# p range(1,5)


def exp1(b,n)
    return 1 if n==0
    b * exp1(b, n-1)
end

# p exp1(2,3) # 8
# p exp1(2,4) # 16
# p exp1(3,3) # 27

def exp2(b,n)
    return 1 if n == 0
    return b if n == 1
   
    if n % 2 == 0
        exp2(b, n/2) * exp2(b, n/2)
    else 
        b * (exp2(b, (n-1)/2) * exp2(b, (n-1)/2))
    end 
end 

# p exp2(2,3) # 8
# p exp2(2,4) # 16
# p exp2(3,3) # 27

def deep_dup(arr)
    new_arr = []
    
    return arr if arr.none? {|el| el.is_a?Array}

    arr.each do |el|
        if !el.is_a?Array
            new_arr << el
        else
            new_arr << deep_dup(el)
        end
    end
    new_arr
end

# p deep_dup([1,[2],[3,4]])

def fib(n)
    return [] if n == 0
    return [0] if n == 1
    return [1] if n == 2

    fib(n-1) << fib(n-1)[-1] + fib(n-2)[-1]

end

# p fib(5)

def

