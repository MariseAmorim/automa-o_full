class Testador
	attr_accessor :name , :cargo#metodo acessor de acesso
	def initialize(name,cargo)
	@name =name
	@cargo = cargo	
	end
	def fala
		puts "#{@name} diz: achei um bug"
	end

	def cargo
		puts "#{@name} diz: meu cargo eh #{@cargo}"	
	end
end

marise = Testador.new 'Marise', 'QA Junior'

marise.fala
marise.name = 'Alex'
marise.fala
marise.cargo ='QA'
marise.cargo