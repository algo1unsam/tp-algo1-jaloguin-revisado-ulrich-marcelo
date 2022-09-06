import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = [ ]

	method disfracesRepetidos(){
		var listaDisfraces = self.todosLosDisfraces()
		return listaDisfraces.filter({disfraz => listaDisfraces.occurrencesOf(disfraz)!=1}).asSet()
	}
	method todosLosDisfraces(){
		var listaDisfraces = []
		integrantes.forEach({integrante => listaDisfraces.addAll(integrante.disfraces().asSet())})
		return listaDisfraces
	}
	
	method agregarIntegrantes(lista){
		integrantes.addAll(lista)
	}
	method capacidadSusto(){
		return integrantes.fold(0,{acum,integrante => acum + integrante.capacidadSusto()})
	}
	method caramelos(){
		return integrantes.fold(0,{acum,integrante => acum + integrante.caramelos()})
	}
	method lider(){
		integrantes.sortBy({integrante1,integrante2 => integrante1.capacidadSusto()>integrante2.capacidadSusto()})
		return integrantes.first()
	}
	method recibirCaramelos(cantidad){
		self.lider().recibirCaramelos(cantidad)
	}
	
	
	method normaSinRepetidos(){
		if(self.hayRepetidos()){
			integrantes.forEach({integrante => integrante.disfraces().removeAll(self.disfracesRepetidos())})			
		}
	}
	method hayRepetidos(){
		return not self.disfracesRepetidos().isEmpty()
	}
	
	
	
	

}

object barrio{
	var chicos = []
	method chicos(lista){
		chicos.addAll(lista)
	}
	method chicosConMasCaramelos(cantidad){
		chicos.sortBy({chico1,chico2 => chico1.caramelos()>chico2.caramelos()})
		return chicos.take(cantidad)
	}
	method algunoMuyAsustador(){
		return chicos.any({chico => chico.capacidadSusto()>42})
	}
	
	
	
}






