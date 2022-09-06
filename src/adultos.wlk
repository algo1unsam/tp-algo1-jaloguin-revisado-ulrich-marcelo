import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 22

	method tolerancia(){
		return tolerancia
	}
	
	
	method serAsustadoPor(alguien){
		alguien.recibirCaramelos(self.caramelosAEntregar(alguien))
		tolerancia--
		
	}
	method caramelosAEntregar(alguien){
		return 0.max(alguien.capacidadSusto() - tolerancia)
	}
	

}
