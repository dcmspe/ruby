# encoding: utf-8

load "lib/livro.rb"
load "lib/biblioteca.rb"
load "lib/relatorio.rb"

@teste_e_design = Livro.new "Teste e Desgin","Mauricio Aniche", "123454", 247, 69.9, :testes
@psicologia_avancada = Livro.new "Psicologia Avançada","Danilo Caetano", "45544", 121, 69.9, :psicologia
@ruby = Livro.new "Ruby","Lucas Cavalcanti", "456789", 200, 69.90, :programacao
@web_design_responsivo = Livro.new "Web Design Responsivo","Tárcio Zemel", "77888", 189, 69.9, :web_design
@tdd = Livro.new "Test Driven Development","Mauricio Aniche", "99999", 195, 69.90, :programacao

@biblioteca = Biblioteca.new
@biblioteca.adiciona @teste_e_design
@biblioteca.adiciona @psicologia_avancada
@biblioteca.adiciona @ruby
@biblioteca.adiciona @web_design_responsivo 
@biblioteca.adiciona @tdd

@relatorio = Relatorio.new @biblioteca
