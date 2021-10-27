include("geneticAlgorithm.jl")

numberOfRocks = 20
values = rand(1:100, numberOfRocks)
weights = rand(1:10, numberOfRocks)
maxCapacity = 30
populationSize = 50
crossoverPoint1 = 7
crossoverPoint2 = 14
mutationPercentage = 0.1
elitePercentage = 0.1

population = generatePopulation(populationSize, numberOfRocks)
popGen, population = geneticAlgorithm!(population, elitePercentage, crossoverPoint1, crossoverPoint2,
        mutationPercentage, values, weights, maxCapacity)
# printPopulation(population)

sumWeights = sum(weights[population[1].genes .== 1])
out = ""

out *= "\nUkupan broj kamenja je $numberOfRocks"
out *= "\nTezine kamenja su $values"
out *= "\nMaksimalna tezina kamenja je $maxCapacity"
out *= "\nRezultati: "

if sumWeights > maxCapacity
    println("Nije pronadjeno resenje")
else
    global out *= "Tezina izabranog kamenja je: $sumWeights"
    value = sum(values[population[1].genes .== 1])
    global out *= "\nVrednost izabranog kamenja je: $value"
    global out *= "\nUkupan broj generacija je $popGen"
    global out *= "\nIdealna jedinka $(population[1])"
    global out *= "\nIzabrana su kamenja sa rednim brojevima: "
    for i in 1:numberOfRocks
        if population[1].genes[i] == 1
            global out *= "$i "
        end
    end

    open("resenje.txt", "w") do file
        write(file, out)
    end
    write(stdin.buffer, 0x0C) # očisti terminal

    print("Rešenje se nalazi u datoteci \"resenje.txt!\"")
end