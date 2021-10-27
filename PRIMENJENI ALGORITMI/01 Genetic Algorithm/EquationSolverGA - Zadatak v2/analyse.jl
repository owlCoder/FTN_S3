include("geneticAlgorithm.jl")

function calculateAverage(data, elitePercentage, crossoverPoint, mutationPercentage, num)
    averageGen = 0.0
    averageFit = 0.0

    for i in 1:num
        gen, pop = geneticAlgorithm!(data, elitePercentage, crossoverPoint, mutationPercentage, num)
        averageGen += gen
        averageFit += pop[1].fitness
    end

    averageGen = averageGen / num
    averageGen = averageGen / num

    return averageGen, averageFit
end

function findBestElitePercentage(data, eliteRange, crossoverPoint, mutationPercentage, num)
    resultsFit = []
    resultsGen = []

    for elitePercentage in eliteRange
        dataCopy = deepcopy(data)
        averageGen, averageFit = calculateAverage(dataCopy, elitePercentage, crossoverPoint, mutationPercentage, num)
        
        push!(resultsFit, averageFit)
        push!(resultsGen, averageGen)
    end

    minIndex = argmin(resultsFit)
    optimalValue = resultsFit[minIndex]

    return minIndex, optimalValue, resultsFit, resultsGen
end

 function findBestCrossoverAndMutation(data, eliteRange, crossoverRange, mutationRange, num)
     resultsFit = ones(length(crossoverRange), length(mutationRange))
 end