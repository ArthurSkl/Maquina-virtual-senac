class Retangulo:
    def __init__ (self,lado1 , lado2): 
        self.lado1 = lado1
        self.lado2 = lado2
        self.area = 0 
    def git_l1(self):
        return self.lado1  
    def git_l2(self):
        return self.lado2  
    def git_area(self):
        self.area = self.lado1 * self.lado2 
        return(f"A area do Retangulo é : {self.area}")
r1 = Retangulo(10,14)
print(r1.git_area())
print(r1.area)        