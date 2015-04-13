# encoding: utf-8

load "lib/formatador_moeda.rb"
p "... loaded lib/formatador_moeda.rb"

load "lib/midia.rb"
p "...loaded lib/midia.rb"

load "lib/revista.rb"
p "...loaded lib/revista.rb"

load "lib/cd.rb"
p "...loaded lib/cd.rb"

load "lib/dvd.rb"
p "...loaded lib/dvd.rb"

load "lib/livro.rb"
p "...loaded lib/livro.rb"

load "lib/venda_facil.rb"
p "...loaded lib/venda_facil.rb"

load "lib/relatorio.rb"
p "...loaded lib/relatorio.rb"

load "lib/banco_de_arquivos.rb"
p "...loaded banco_de_arquivos.rb"

@teste_e_design = Livro.new "Teste e Desgin","Mauricio Aniche", "123454", 247, 69.9, :testes
@psicologia_avancada = Livro.new "Psicologia Avançada","Danilo Caetano", "45544", 121, 69.9, :psicologia
@ruby = Livro.new "Ruby","Lucas Cavalcanti", "456789", 200, 69.90, :programacao
@web_design_responsivo = Livro.new "Web Design Responsivo","Tárcio Zemel", "77888", 189, 69.9, :web_design
@tdd = Livro.new "Test Driven Development","Mauricio Aniche", "99999", 195, 69.90, :testes

@biblioteca = VendaFacil::Set.new
@biblioteca.adiciona @teste_e_design
@biblioteca.adiciona @psicologia_avancada
@biblioteca.adiciona @ruby
@biblioteca.adiciona @web_design_responsivo 
@biblioteca.adiciona @tdd

@relatorio = Relatorio.new @biblioteca

@windows = DVD.new "Windows 7 for Dummies", 98.9, :sistemas_operacionais
@linux = DVD.new "Linux for for Dummies", 13.9, :sistemas_operacionais
