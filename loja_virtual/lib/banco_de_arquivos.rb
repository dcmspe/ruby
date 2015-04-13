# encoding: utf-8

require 'yaml'

class BancoDeArquivos
	def salva(midia)
		File.open("midias.yml", "a") do |arquivo|
			arquivo.puts YAML.dump(midia)
			arquivo.puts ""
		end
	end
		
	def carrega
		$/ = "\n\n"
		File.open("midias.yml","r").map do |midia_serializada|
			YAML.load midia_serializada
		end
	end
end
