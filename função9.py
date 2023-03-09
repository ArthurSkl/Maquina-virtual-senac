valor=1.35

def consumo (potencia,horas):
    c=potencia*horas/1000 
    return c

KWh=consumo(1500,8)

def contaluz(KWh,valor):
    conta=KWh*valor*30
    return conta
conta=contaluz(KWh,valor)

print("KWh dia ",KWh) 
print(f"o valor da usa conta  do mês foi de = {conta}")