import fonctions as f

print("Hello, World!")
while True:
    a = input("Choisir nombre 1: ")
    b = input("Choisir nombre 2: ")
    res = f.puissance(int(a), int(b))
    print(res)