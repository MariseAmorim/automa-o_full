#-*- coding: utf-8 -*-
#puts 'Qual o seu nome?'
#nome = gets.chomp

#puts 'Qual a sua idade idade? '
#idade = gets.to_i

#cnh = (idade < 18)? false : true

#if idade <18
#	cnh = false
#else
#	cnh =true
#end

#if cnh 
#	puts nome + ' pode tirar cnh'
#else
#	puts nome + ' nao pode tira cnh'
#end

#puts 'Deseja beber algo? 1- Sim, 2 - Nao'
#bebida = gets.to_i

#puts 'Qual a sua idade idade? '
#idade = gets.to_i


#if bebida == 1
#	if idade >= 18
#		puts 'Servindo uma cerveja'
#	elsif idade > 15
#		puts 'Servindo um suco'
#	else
#		puts 'Servindo leite com toody'
	
#	end
#end

#conta_bloqueada = false
#	puts 'Fazendo login'if !conta_bloqueada #! significa o não
#    puts 'Fazendo login' unless conta_bloqueada # unless a não ser que

puts 'Escolha um dia da semana?'
dia_semana = gets.to_i

case dia_semana
when 1
	puts 'Domingo'
when 2
	puts 'Segunda'
when 3
	puts 'Terca'
when 4
	puts 'Quarta'
else 
	puts 'Numero nao reconhecido'
end