//: A UIKit based Playground for presenting user interface
    import UIKit
	import PlaygroundSupport

// Implementar el sistema de clases o de estructuras
class Procesador {
    var velocidad = 0.0
    var numCores = 0
    var numHilos = 0
    var fabricante = ""
}

class MemoriaRam {
    var almacenamiento = 0
    var fabricante = ""
    var rgb = false
}

class UnidadAlmacenamiento {
    var almacenamiento = 0
    var fabricante = ""
    var tipoUnidad = ""
}

class TarjetaGrafica {
    var ramGraph = MemoriaRam()
    var consumo = 0.0
    var cudaCores = 0
    var velocidad = 0.0
}

class Ordenador {
    var nombreEquipo = ""
    var precio = 0.0
    var listaRams = [MemoriaRam]()
    var procesador = Procesador()
    var listaUnidadesAlm = [UnidadAlmacenamiento]()
    var tarjetaOdenador = TarjetaGrafica()
}


// Procesador
var pro1 = Procesador()
pro1.velocidad = 6.35
pro1.numCores = 10
pro1.numHilos = 20
pro1.fabricante = "Core i9-10850K"

var pro2 = Procesador()
pro2.velocidad = 5.2
pro2.numCores = 16
pro2.numHilos = 32
pro2.fabricante = "AMD Ryzen 9 5950X"

// Instanciar un ordenador completo con todos sus objetos con información
// Memorias RAM
var ram1 = MemoriaRam()
ram1.almacenamiento = 16
ram1.fabricante = "Corsair Vengeance LPX"
ram1.rgb = true

var ram2 = MemoriaRam()
ram2.almacenamiento = 16
ram2.fabricante = "G.Skill Ripjaws V"
ram2.rgb = false

// Unidades de almacenamiento
var ua1 = UnidadAlmacenamiento()
ua1.almacenamiento = 250
ua1.fabricante = "Kingston"
ua1.tipoUnidad = "SSD"

var ua2 = UnidadAlmacenamiento()
ua2.almacenamiento = 500
ua2.fabricante = "Samsung"
ua2.tipoUnidad = "SSD"

// Tarjeta Gráfica
var tj1 = TarjetaGrafica()
tj1.ramGraph = ram1
tj1.consumo = 850
tj1.cudaCores = 16
tj1.velocidad = 2000

var tj2 = TarjetaGrafica()
tj2.ramGraph = ram2
tj2.consumo = 1700
tj2.cudaCores = 32
tj2.velocidad = 3000

// Lista de memorias ram
var listaRams = [MemoriaRam]()
listaRams.append(ram1)
print("")
listaRams.append(ram2)
print("")


// Lista de unidades de almacenamiento
var listaUnidAlmac = [UnidadAlmacenamiento]()
listaUnidAlmac.append(ua1)
print("")
listaUnidAlmac.append(ua2)



// ORDENADORES
var ordenador1 = Ordenador()
ordenador1.nombreEquipo = "Mi Ordenador"
ordenador1.precio = 1250.50
ordenador1.listaRams = listaRams
ordenador1.procesador = pro1
ordenador1.listaUnidadesAlm = listaUnidAlmac
ordenador1.tarjetaOdenador = tj1

var ordenador2 = Ordenador()
ordenador2.nombreEquipo = "Ordenador MAMADISIMO"
ordenador2.precio = 5048.5
ordenador2.listaRams = listaRams
ordenador2.procesador = pro2
ordenador2.listaUnidadesAlm = listaUnidAlmac
ordenador2.tarjetaOdenador = tj2

// Imprimir ordenadores
print("")
dump(ordenador1)
print("")
dump(ordenador2)
