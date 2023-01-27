
class Liste:
    def __init__(self):
        self.tete = 0
        self.queue = None

    def creerListe(self, e):
        self.tete = e
        self.queue = None
        return self

    def setQueue(self, uneliste):
        self.queue = uneliste

    def getTete(self):
        return self.tete

    def __str__(self):
        if self.tete == 0:
            return "()"
        else:
            return "(" , str(self.tete) + "," + self.queue + ")"
    
    def estvide(self):
        return self.tete == 0
    
    def taille(self):
        if self.estvide():
            return 0
        else:
            return 1 + self.queue.taille()
    
    def add(self, e):
        if self.estvide():
            self.creerliste(e)
        else:
            self.queue.add(e)

    def dell(self, e):
        if self.estvide():
            return
        else:
            if self.tete == e:
                self.tete = self.queue.tete
                self.queue = self.queue.queue
            else:
                self.queue.dell(e)
    
    def add(self, e, n):
        if self.estvide():
            return
        else:
            if n == 0:
                self.tete = e
                self.queue = self.queue
            else:
                self.queue.add(e, n-1)
        
    def copy(self):
        if self.estvide():
            return Liste()
        else:
            l = Liste()
            l.tete = self.tete
            l.queue = self.queue.copy()
            return l


l3 = Liste()

l1 = Liste()
l1.creerListe(1)

l2 = Liste()
l2.creerListe(2)
l2.queue = l1
l2.setQueue(l1)

print(l2.tete)
print(l2.getTete())