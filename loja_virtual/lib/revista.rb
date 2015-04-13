# encoding: utf-8
class Revista

	#Atributo de instância da class
	@id = 0

	#Método da class
	def self.id
		@id += 1
	end
	
	def initialize(titulo)
		@titulo = titulo
		@id = self.class.id
	end

	def retorna_valor_de_id_do_singleton_class
		self.class.id
	end

	def id
		@id
	end

	def titulo
		titulo_upcase = @titulo.upcase
		"Título: #{titulo_upcase}"
	end
end
