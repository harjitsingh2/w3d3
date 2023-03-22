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

