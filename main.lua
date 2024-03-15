-- NOTE: The formula that does take into account initial velocity wasmade by picking the plus-minus in the quadratic formula to be a plus, and possibly the minus route could be useful, too. So I want to figure that out.

local mass = 10
local force = 20
local distance = 10
local initialVelocity = 3

-- local timePrediction = math.sqrt(2 * mass * distance / force) -- A formula I derived myself (doesn't take into account initial velocity)
local timePrediction = mass * (math.sqrt(2 * distance * force / mass + initialVelocity ^ 2) - initialVelocity) / force -- Another formula I derived myself
local momentumPrediction = timePrediction * force + initialVelocity * mass

local position = 0
local velocity = initialVelocity
local time = 0

function love.update(dt)
	velocity = velocity + force / mass * dt
	position = position + velocity * dt
	time = time + dt

	local momentum = velocity * mass

	print(timePrediction, time, momentumPrediction, momentum, position, distance)
	-- For not factoring in initial velocity:
	-- 3.1622776601684 3.167672885 63.245553203368 63.3534577 10.087258090465 10
	-- For factoring in initial velocity:
	-- 2 2.011941575 70 70.2388315 10.117207671464 10
	-- time was approximately equal to timePrediction, momentum to momentumPrediction, and position to distance
end
