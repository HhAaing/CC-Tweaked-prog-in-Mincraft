local dep = 0
while dep<=64 do
    print(string.format("Fuel Level:[%d]",turtle.getFuelLevel())) 
    if(turtle.getFuelLevel()<=10)then
        turtle.refuel()         
    end

        turtle.dig()
        turtle.forward()
        turtle.digUp()
        turtle.digDown()
        turtle.down()
        dep=dep+1

    if dep>=30 then                           
    turtle.turnLeft()
    turtle.turnLeft()
        while dep>=0 do
            if turtle.detect() then
                turtle.dig()
                turtle.forward()
                turtle.up()
                dep=dep-1
            end
        end
        turtle.forward()
        turtle.forward()
        break
    end
end