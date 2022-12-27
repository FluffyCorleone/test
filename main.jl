function factorial( x )
    f = x    

    for i in reverse( 1:f-1 )
        x *= i        
    end

    x
end

# Collatz Conjecture - Start with a number n > 1. Find the number of steps it takes to reach one using the 
# following process: If n is even, divide it by 2. If n is odd, multiply it by 3 and add 1.

function collatz( x )
    steps = 0

    while true

        if x == 1
            break
        end

        if x % 2 == 0
            x = x / 2
        else 
            x = x * 3 + 1
        end    

        steps += 1
    end

    steps
end

steps = collatz( 994534 )
println( "collatz 99: $steps steps")

num = 25
fact = factorial( num )
println( "$num factorial: $fact")

println( "$(typeof(num))" )