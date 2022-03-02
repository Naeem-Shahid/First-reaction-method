using Plots

M=4
w = [0.2 0.3 0.2 0.3; 0.1 0.5 0.3 0.1; 0.2 0.1 0.1 0.6; 0.4 0.2 0.1 0.3]

function firstreaction(w, N::Int, maxtime::Int)
    t::Float64 = 0
    times = Float64[t]
    n::Int = 0
    i = rand(1:N)
    states = Int[i]
    while t < maxtime
        reft = 1
        for j in 1:N
            if w[i,j] != 0
                propt = -log(rand())/w[i,j]
                if propt < reft
                    reft = propt
                    n = j
                end
            end
        end
        t = t + reft
        push!(times, t)
        push!(states, i)
        i = n
    end
    times, states
end

tt, ss = firstreaction(w, M, 30)
plot(tt, ss, legend = false, xlabel = "Time", ylabel = "States")

