def solution(ability, number):
    ability.sort()  

    while number > 0:
        smallest1 = ability.pop(0)
        smallest2 = ability.pop(0)
        new_ability = smallest1 + smallest2
        ability.append(new_ability)
        number -= 1
        ability.sort()
    return sum(ability)