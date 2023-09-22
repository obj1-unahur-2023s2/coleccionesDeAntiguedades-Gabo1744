object casaDeAntiguedades {
	const antiguedades = []
	
	method antiguedades() = antiguedades
	method adquirirAntiguedad(unaAntiguedad){
		antiguedades.add(unaAntiguedad)
	}
	method adquirirLoteDeAntiguedades(lote){
		antiguedades.addAll(lote)
	}
	method hayStock() = not antiguedades.isEmpty()
	method cantDeAntiguedades() = antiguedades.size()
	method ultimaAntiguedadAdquirida() = antiguedades.last()
	method esMuyAntigua(antiguedad) = antiguedad.tiempo() > 100
	method aniosDeAntiguedad(ubicacion) = antiguedades.get(ubicacion).tiempo()
	method restaurarAntiguedad(posicion){
		if(antiguedades.get(posicion).estaEnMalEstado()){
			antiguedades.get(posicion).restaurar()
		}
	}
}

class Antiguedad{
	var property tiempo
	var property antiguedad
	var property estaEnMalEstado
	
	method restaurar(){
		estaEnMalEstado = false
	}
}