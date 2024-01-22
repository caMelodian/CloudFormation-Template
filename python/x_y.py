import turtle
def solution(command):
    turtle.shape('circle')
    turtle.lt(90)
    answer = []
    for i in command:
        if(i == "L"):
            turtle.lt(90)
        elif(i=="R"):
            turtle.rt(90)
        elif(i == "G"):
            turtle.fd(100)
        elif(i == "B"):
            turtle.bk(100)
    answer = [int(turtle.xcor()/100) , int(turtle.ycor()/100)]
    return answer

print(solution("RGGGGGGGG"))