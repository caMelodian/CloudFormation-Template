def solution(command):
    # 초기 위치와 방향 설정
    x, y = 0, 0
    direction = (0, 1)  # 초기에 +y 방향을 향함

    # 명령어 수행
    for cmd in command:
        if cmd == 'R':
            # 오른쪽으로 90도 회전
            # 각도 - 90 (x , y) -> (y , -x)
            direction = (direction[1], -direction[0])
        
        elif cmd == 'L':    
            # 왼쪽으로 90도 회전 
            # 각도 + 90 (x , y) -> (-y, x)
            direction = (-direction[1], direction[0])
            
        elif cmd == 'G':
            # 한 칸 전진
            # 방향 백터 만큼 회전 
            x += direction[0]
            y += direction[1]
        elif cmd == 'B':
            # 한 칸 후진
            x -= direction[0]
            y -= direction[1]

    return [x, y]

# 예시 명령어 "GRGLGRG"에 대한 결과 출력
print(solution("GRGLGRG"))
print(solution("GGGGGBBBLGGGRGBGBGLGGBBBBBBBBBBBBBBBBBBBBBBBBBBBB"))

