# encoding: utf-8
module VendaFacil
  class Set

	include Enumerable

	def initialize
		@banco_de_arquivos = BancoDeArquivos.new
		@midias = []
	end

	def midias
                @midias ||= @banco_de_arquivos.carrega
        end

	def adiciona(midia)
		salva midia do
			@midias << midia
		end if midia.kind_of? Midia
	end

	def midias_por_categoria(categoria)
		@midias.select { |midias| midias.categoria == categoria}
	end
	
	def each
		@midias.each {|midia| yield midia}
	end

	private

	def salva(midia)
		@banco_de_arquivos.salva midia
		yield
	end
  end
end
