def calcular_imc(peso,altura)
	imc = peso / altura * 2
	puts "IMC #{imc.round(2)}"#funçã0 round aredonda as casas decimais
end

begin
calcular_imc 48, 1.62
puts 'Deu bom'
rescue Exception => e 
	puts 'Deu ruim'
	puts e.message
	puts e.backtrace
end