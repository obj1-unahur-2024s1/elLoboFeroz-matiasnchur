object caperucitaRoja {
    method peso(){return 60 + canasta.peso()}
    method cruzarElBosque(){
    	canasta.quitarManzana(1)
    }
}

object abuelita {
    method peso() {return 50}
}

object manzana {
    method peso() {return 0.2}
}

object canasta {	
  var cantidadDeManzanas = 6
  method cantidadDeManzanas(){return cantidadDeManzanas}
  method peso() {return cantidadDeManzanas * manzana.peso()}
  method quitarManzana(cantidad) {
  	cantidadDeManzanas = self.cantidadDeManzanas() - cantidad 
  }
}

object loboFeroz {
  var peso = 10
  
  method peso() {return peso}

  method estaSaludable() {
    return peso.between(20, 150)
  }

  method aumentarPeso(cantidad) {
    peso = self.peso() + cantidad
  }

  method bajarPeso(cantidad) {
    peso = self.peso() - cantidad
  }

  method sufrirCrisis() {
    peso = 10
  }

  method comer(unAlimento) {
    peso = self.peso() + unAlimento.peso()*0.1
  }

  method correr() {
    peso = self.peso() - 1
  }
  
}