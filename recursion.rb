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

def b(arr, target)
    return arr.length/2 if arr[arr.length/2] == target 
    if arr.length <= 2 && !arr.inlcude?(target)
        return nil
    else
        return arr.index(target)
    end 

    if target > arr[arr.length/2]
        b(arr[arr.length/2..-1], target)
    else 
        b(arr[0..arr.length/2], target)
    end
end 

# p b([1, 2, 3], 1) # => 0
# p b([2, 3, 4, 5], 3) # => 1
# p b([2, 4, 6, 8, 10], 6) # => 2
# p b([1, 3, 4, 5, 9], 5) # => 3
# p b([1, 2, 3, 4, 5, 6], 6) # => 5
# p b([1, 2, 3, 4, 5, 6], 0) # => nil
# p b([1, 2, 3, 4, 5, 7], 6) # => nil


