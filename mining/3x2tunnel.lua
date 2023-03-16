local i=1
local o=0
while(o==0)do
    print(string.format("Fuel Level:[%d]",turtle.getFuelLevel())) --显示当前燃料状况
    print(string.format("forward distance:[%d]",i))  
    if(turtle.getFuelLevel()<=10)then
        turtle.refuel()         
    end


    turtle.dig()
    turtle.forward()
    turtle.digUp()
    --挖前方方块2格高且前进
    turtle.turnLeft()
    turtle.dig()
    turtle.forward()
    turtle.digUp()

    turtle.turnLeft()
    turtle.turnLeft()
    turtle.forward()
    turtle.dig()
    turtle.forward()
    turtle.digUp()
    
    turtle.turnLeft()
    turtle.turnLeft()
    turtle.forward()
    turtle.turnRight()


    i=i+1
    if i>=64 then
        turtle.turnLeft()
        turtle.turnLeft()
        while i>=0 do
            turtle.forward();
            i=i-1
        end
        o=1
    end
    










end