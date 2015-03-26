# encoding: utf-8

class Livro
	def initialize(autor, isbn = "1", numero_de_paginas, preco)
		@autor = autor
		@isbn = isbn
		@numero_de_paginas = numero_de_paginas
		@preco = preco
	end

	def to_s
		"Autor: #{@autor}, ISBN: #{@isbn}, Páginas: #{@numero_de_paginas}, Preço: #{@preco}"
	end

	attr_accessor :preco
=begin
	attr_writer :preco
	attr_reader :preco
=end

=begin 
	
	def preco
		@preco
	end

	def preco=(preco)
		@preco = preco
	end

=end

	
end
