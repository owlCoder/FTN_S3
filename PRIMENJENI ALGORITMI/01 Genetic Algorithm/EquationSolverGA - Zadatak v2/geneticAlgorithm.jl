include("population.jl")

function geneticAlgorithm!(data, elitePercentage, crossoverPoint, mutationPercentage, repeatSize)
    calculatePopulationFitness!(data)

    populationSize = length(data)
    popGen = 0
    bestFit = data[1].fitness
    repeatNum = 1
    eliteSize = Int(trunc(elitePercentage * populationSize))

    # Ako nam za ukrštanje ostaje neparan broj jedinki, povećamo eliteSize za 1
    eliteSize = eliteSize + (populationSize - eliteSize) % 2

    while( (data[1].fitness > 0.0) && (repeatNum < repeatSize) )
        elite = deepcopy(selectPopulation(data, eliteSize))
        data = selectPopulation(data, populationSize - eliteSize)
        data = crossoverPopulation!(data, crossoverPoint)
        mutatePopulation!(data, mutationPercentage)
        data = [data; elite]
        calculatePopulationFitness!(data)
        popGen = popGen + 1

        @printf("   GEN: %2i\t\tBEST-FIT: %7.2f\t\tBR-PON: %2i\n",  popGen, bestFit, repeatNum)

        if( abs(bestFit - data[1].fitness) < 0.01)
            repeatNum = repeatNum + 1
        else
            bestFit = data[1].fitness
            repeatNum = 1
        end
    end
    return popGen, repeatNum, data
end