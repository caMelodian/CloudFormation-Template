
# 이게 윤년 계산하는 식이거든?

n = int(25)
print(+(n&-n>3|8>>n%50))