
class Pessoa
	attr_accessor :nome, :email
	def initialize(nome, email) #construtor
		@nome = nome
		@email = email
	end
end
class Testador < Pessoa
	def testar
		puts "#{@nome} achou um bug!Enviar um email para #{@email}"
	end
end

class Desenvolvedor < Pessoa
  	def codifica
  		puts "#{@nome}, criou um bug.Enviar email para #{@email}"
  	end
end


t= Testador.new('Marise', 'marise@bol.com')
t.testar
d = Desenvolvedor.new('Joao', 'Joao@bol.com')
d.codifica