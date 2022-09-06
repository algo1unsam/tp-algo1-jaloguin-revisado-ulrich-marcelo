import elementos.*

object macaria {
	var nivelIra= 10
	var disfraces = [ ]
	var caramelos = 0
	method caramelos(){return caramelos}
	method disfraces(){return disfraces}
	
	
	method capacidadSusto(){
		return nivelIra + disfraces.fold(0,{acum,disfraz => acum+ disfraz.nivelSusto()})
	}
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	method recibirCaramelos(cantidad){
		var cantidadRecibida = cantidad.div(4/3)
		caramelos+=cantidadRecibida
	}
	
	method dejarDeUsarMenosEfectivo(){
		disfraces.sortBy({disfraz1,disfraz2 => disfraz1.nivelSusto()<disfraz2.nivelSusto()})
		disfraces.remove(disfraces.first())
		
	}
	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}

}

object pancracio {
	var cantidadDeU = 4
	var disfraces = [mascaraDracula]
	var caramelos = 0
	method disfraces(){return disfraces}
	method caramelos(){return caramelos}
	
	method capacidadSusto(){
		return cantidadDeU + disfraces.first().nivelSusto()
	}
	method disfrazar(disfraz){
		disfraces.clear()
		disfraces.add(disfraz)
	}
	method recibirCaramelos(cantidad){
		caramelos+= cantidad
	}
	method quitarDisfraz(disfraz){
		cantidadDeU+=2
	}
	
	
}

// El chico inventado .

object pedro {
	var capacidadBase = 0
	var disfraces=[]
	var caramelos=0
	method disfraces(){return disfraces}
	method caramelos(){return caramelos}
	
	method capacidadSusto(){return capacidadBase + disfraces.fold(0,{acum,disfraz => acum+ disfraz.nivelSusto()})}
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}
	method recibirCaramelos(cantidad){
		caramelos+=cantidad.div(4)
	}
	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}


}

