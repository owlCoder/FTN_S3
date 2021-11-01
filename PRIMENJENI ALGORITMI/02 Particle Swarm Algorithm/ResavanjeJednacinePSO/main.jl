include("algorithm.jl")

numberOfParticles = 10
numberOfOperands =         # n
minRang = -1
maxRang = 1
targetValue = 0            # s
maxIteration = 200
maxVelocity = 10

swarm = generateSwarm(numberOfParticles, numberOfOperands, minRang, maxRang)
PsoAlgorithm(swarm, targetValue, maxIteration, maxVelocity)