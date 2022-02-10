
a = []
print !a.is_a?(Array) # false

b = [1]
print !b.is_a?(Array) # false

c = [1, 2]
print !c.is_a?(Array) # false

d = {}
print !d.is_a?(Array) # true
