object caperucitaRoja {
    var peso = 60
    method peso(){return peso + canasta.peso()}
    method cruzarElBosque(){
    	canasta.quitarManzana(1)
    }
}

object abuelita {
    var peso = 50
    method peso() {return peso}
}

object manzana {
	var peso = 0.2
    method peso() {return peso}
}

object canasta {	
  var cantidadDeManzanas = 6
  var peso = 1.2
  method cantidadDeManzanas(){return cantidadDeManzanas}
  method peso() {return cantidadDeManzanas * manzana.peso()}
  method quitarManzana(cantidad) {
  	cantidadDeManzanas = self.cantidadDeManzanas() - cantidad 
  	peso = self.peso()
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