class MarcaCervezas {
	var property pais
	const property gLitrosL
	method gLitrosL() = gLitrosL 
}
class Jarra{
	const property marca
	const property porcentajeAlcohol
	method graduacion()= porcentajeAlcohol
}
class CervezaRubia inherits Jarra{
	var graduacion 
	override method graduacion() = graduacion
	method subirGraduacion(cant)= graduacion + cant
	method graduacionCR() =graduacion
}
class CervezaNegra  inherits MarcaCervezas{
	 method graduacion() = graduacionReglamentaria.porcentajeGraduacionReglamentaria().min(gLitrosL*2)
}
class CervezaRoja inherits CervezaNegra{
	override method graduacion() = super() * 1.25
}
object graduacionReglamentaria{
	var property porcentajeGraduacionReglamentaria = 0.1
}