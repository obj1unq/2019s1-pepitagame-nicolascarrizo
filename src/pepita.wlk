import ciudades.*
import wollok.game.*

object pepita {
	var property energia = -2
	var property ciudad = buenosAires 

	var property position = game.at(3,3)
	method image(){
		
		if(energia > 100){
			
			return "pepita-gorda-raw.png"
		}else{
			
			return "pepita.png"
		}
		
	}

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.position())
			ciudad = unaCiudad
		}else{
			
			game.say(self, "Ya estoy en !")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		
		if(energia > 0){
		
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
		
	}else{
		
		game.say(self, "Dame de comer, primero!")
		
		}
	}	
}
