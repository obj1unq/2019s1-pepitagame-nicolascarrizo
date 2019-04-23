import wollok.game.*
import pepita.*

object manzana {
	method image(){
			
			return "manzana.png"
		}
	
	method energia() = 80
	
	method position() = game.at(5,1)
	
}

object alpiste {

		method image(){
	
			return "alpiste.png"
		}
	
	method energia() = 40
	
	method position() = game.at(5,5)
}

