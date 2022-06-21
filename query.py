""" 
Un programa que genere esta query
select 1,'Juan','Perez',1,3,1,1 from dual

"""

import random 

def genAleatorio(min, max):
    return random.randint(min, max)


def main():
    for i in range(1, 31):
        num1 = genAleatorio(1, 100)
        num2 = genAleatorio(1, 100)
        num3 = genAleatorio(1, 100)
        num4 = genAleatorio(3000000000, 3999999999)
        num5 = genAleatorio(1, 45)
        dia = genAleatorio(1, 28)
        mes = genAleatorio(1, 9)
        anio = genAleatorio(1970, 2002)
        num6 = genAleatorio(1, 45)
        num7 = genAleatorio(1, 100)
        print(f"union select {i},'Nombre{i}','Apellido{i}','calle {num1} #{num2} - {num3}' ,'{num4}',{num5},'{dia}/0{mes}/{anio}', {num6} from dual")

main()
