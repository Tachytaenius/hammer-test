local mass = 10
local force = 20
local distance = 10

local timePrediction = math.sqrt(2 * mass * distance / force) -- A formula I derived myself
local momentumPrediction = timePrediction * force

local position = 0
local velocity = 0
local time = 0

function love.update(dt)
	velocity = velocity + force / mass * dt
	position = position + velocity * dt
	time = time + dt

	local momentum = velocity * mass

	print(timePrediction, time, momentumPrediction, momentum, position, distance)
	-- 3.1622776601684 3.167672885 63.245553203368 63.3534577 10.087258090465 10
	-- time was approximately equal to timePrediction, momentum to momentumPrediction, and position to distance
end
