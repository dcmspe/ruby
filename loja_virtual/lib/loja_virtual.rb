# encoding: utf-8

load "lib/livro.rb"
load "lib/biblioteca.rb"

@teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 69.9, :testes
@psicologia_avancada = Livro.new "Danilo Caetano", "45544", 121, 69.9, :psicologia
@ruby = Livro.new "Lucas Cavalcanti", "456789", 200, 69.90, :programacao
@web_design_responsivo = Livro.new "Tárcio Zemel", "77888", 189, 69.9, :web_design
@tdd = Livro.new "Mauricio Aniche", "99999", 195, 69.90, :programacao

@biblioteca = Biblioteca.new
@biblioteca.adiciona @teste_e_design
@biblioteca.adiciona @psicologia_avancada
@biblioteca.adiciona @ruby
@biblioteca.adiciona @web_design_responsivo 
@biblioteca.adiciona @tdd
