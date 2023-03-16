--stop mining when meet cave 
--遇到洞会停止并返回
local i = 0
while true do 
    print(string.format("Fuel Level:[%d]",turtle.getFuelLevel())) 
    if(turtle.getFuelLevel()<=10)then
        turtle.refuel()         
    end
    if(turtle.inspect())then
        turtle.dig()
        turtle.digUp()
        turtle.forward()
        turtle.digUp()
        i=i+1
        elseif(turtle.inspect()==false)then
            print("distance:",i)
            turtle.turnLeft()
            turtle.turnLeft()
            while i>=1 do
                turtle.forward()
                i=i-1
            end
            break
        elseif(i==64)then
            print("distance:",i)
            turtle.turnLeft()
            turtle.turnLeft()
            while i>=1 do
                turtle.forward()
                i=i-1
            end
            break
        
    end
end
