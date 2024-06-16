import Cervezas.*
class Personas {
	var property peso
	var property cantidadDeAlcholIngerido
	const property aguante
	const property marcas = []
	
	method cantJarrasCompradas()
	method leGustaLaMusicaTradicional() 
	method estaEbria() = cantidadDeAlcholIngerido * peso > aguante
	method leGusta()
	
}
class Belgas inherits Personas{
	override method leGusta() = marcas.any({c => c.gLitrosL() > 4})
}
class Alemanes inherits Personas{
	
}
class Checos inherits Personas{
	override method leGusta() = marcas.any({c => c.graduacion() > 8})
}