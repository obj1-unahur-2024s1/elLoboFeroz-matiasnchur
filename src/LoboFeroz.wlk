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
  
  method soplar(unaCasa){
  	if(self.estaSaludable()){
  		peso = self.peso() - (unaCasa.resistencia() + unaCasa.pesoDeOcupantes())
  	}
  }
  
}

object chanchito{
	method peso(){return 2}
}

object casaDePaja{
	method resistencia(){return 0}
	method pesoDeOcupantes(){
		return 1 * chanchito.peso()
	}
}

object casaDeMadera{
	method resistencia(){return 5}
	method pesoDeOcupantes(){
		return 2 * chanchito.peso()
	}
}

object casaDeLadrillos {
    const resistenciaPorLadrillo = 2
    const cantidadLadrillos = 3
    
    method resistencia() { return resistenciaPorLadrillo * cantidadLadrillos }
   	method pesoDeOcupantes(){
		return 3 * chanchito.peso()
	}
}