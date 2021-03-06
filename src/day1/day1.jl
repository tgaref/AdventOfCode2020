module Day1

export day1

function day1(::Val{:a}, filename, n)
    nums = map(s -> parse(Int,s), readlines(filename)) |> Set{Int}

    for k in nums
        if n-k in nums
            return k * (n-k)
        end
    end
    nothing
end

function day1(::Val{:b}, filename, n)
    nums = map(s -> parse(Int,s), readlines(filename)) |> Set{Int}
    for i in nums
        for j in nums
            m = n-i-j
            if m in nums
                return i * j * m
            end
        end
    end
    nothing
end

end
