fiber = fiber.new do 
    Fiber.yield 1
    2
end
puts fiber.resume  # Outputs: 1