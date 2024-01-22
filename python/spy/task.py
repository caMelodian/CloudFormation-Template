

def solution(ability, number):
    if number == 0:
        return sum(ability)
    
    ability.sort()
    stat = ability[0] + ability[1]
    ability[0] = stat
    ability[1] = stat

    return solution(ability, number - 1)


print(solution([20, 30, 4, 56, 6, 7, 8], 2))

