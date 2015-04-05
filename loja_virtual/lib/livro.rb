# encoding: utf-8

class Livro

	attr_accessor :valor
	attr_reader :categoria, :isbn, :autor, :titulo

	def initialize(titulo, autor, isbn = "1", numero_de_paginas, valor, categoria)
		@titulo = titulo
		@autor = autor
		@isbn = isbn
		@numero_de_paginas = numero_de_paginas
		@valor = valor
		@categoria = categoria
	end

	def eql?(outro_livro)
		@isbn == outro_livro.isbn
	end

	def hash
		@isbn.hash
	end

	def to_s
		"Titulo: #{@titulo}, Autor: #{@autor}, ISBN: #{@isbn}, Páginas: #{@numero_de_paginas}, Valor: #{@valor}, Categoria: #{@categoria}"
	end	
end
