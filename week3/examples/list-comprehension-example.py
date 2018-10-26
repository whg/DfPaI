l = [3, 2, 1]

# what we want is [6, 4, 2]
#
# q = []
# for e in l:
#     q.append(e * 2)

q = [e * 2 for e in l]

print(q)
