# encoding: utf-8

class Livro

	attr_reader :categoria, :autor

	def initialize(titulo, autor, isbn = "1", numero_de_paginas, valor, categoria)
		@titulo = titulo
		@autor = autor
		@isbn = isbn
		@numero_de_paginas = numero_de_paginas
		@valor = valor
		@categoria = categoria
		midia = Midia.new
	end

	def eql?(outro_livro)
		@isbn == outro_livro.isbn
	end

	def hash
		@isbn.hash
	end

	def to_s
		"Titulo: #{@titulo}, Autor: #{@autor}, 
		ISBN: #{@isbn}, Páginas: #{@numero_de_paginas}, 
		Valor: #{@valor}, Categoria: #{@categoria}"
	end	
end
