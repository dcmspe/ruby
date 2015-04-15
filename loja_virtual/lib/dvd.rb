exi# encoding: utf-8
class DVD < Midia
	attr_reader :titulo, :categoria

	include FormatadorMoeda
	
	formata_moeda :valor_com_desconto, :valor

	def initialize(titulo, valor, categoria)
		super()
		@titulo = titulo
		@valor = valor
		@categoria = categoria
	end
	
	def to_s
		%Q{ Título: #{@titulo}, Valor: #{@valor}, Categoria: #{@categoria}}
	end

	def self.metodo_da_class
		"Chamou um método da Class!"
	end
	
	def metodo_da_instancia
		"Chamou um método da Instância!"
	end

end
