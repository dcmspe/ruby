# encoding: utf-8
class CD < Midia
	attr_reader :desconto

	def initialize(titulo, valor, categoria)
		super()
		@titulo = titulo
		@valor = valor
		@categoria = categoria
	end

	def to_s
		%Q{ Titulo: #{@titulo}, Valor: #{@valor}, Categoria: #{@categoria}}
	end
end
