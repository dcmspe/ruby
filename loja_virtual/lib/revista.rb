# encoding: utf-8
require "fileutils"

class Revista

	attr_reader :titulo, :id
	attr_accessor :valor

	def initialize(titulo, valor)
		@titulo = titulo
		@valor = valor
		@id = self.class.next_id #Atribui um id ao objeto Revista
		@new_record = true
	end
	
	def save
		@new_record = false
		File.open("db/revistas/#{@id}.yml", "w") do |file|
			file.puts serialize
		end	
	end

	def self.find(id)
		mensagem_de_erro = "Arquivo db/revistas/#{id}.yml não encontrado!"
		raise DocumentNotFound, mensagem_de_erro, caller unless File.exists?("db/revistas/#{id}.yml")
		YAML.load File.open("db/revistas/#{id}.yml", "r")
	end
	
	def destroy
		unless @destroyed or @new_record
			FileUtils.rm "db/revistas/#{id}.yml"
			@destroyed = true
		end
	end

	private

	def serialize
		YAML.dump self
	end

	def self.next_id
		Dir.glob("db/revistas/*.yml").size + 1
	end
end
