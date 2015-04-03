# encoding: UTF-8

class Relatorio

	def initialize(biblioteca)
		@biblioteca = biblioteca
	end
	
	def total
		@biblioteca.livros.inject(0) { |total, livro|
			total += livro.valor
		}
	end
end
