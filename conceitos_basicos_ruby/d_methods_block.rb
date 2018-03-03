#def achou_bug(reposta)    #def(define)cria um metodo
#	if reposta
#		'Informe o desenvolvedor'
#	else
#		'Podemos ir para a producao'
#	end
#end

#puts 'Qual o resultado do teste? 0 - Sem bugs, 1- Com bugs '
#bug = gets.to_i
#bug = (bug == 1) ? true : false
#puts achou_bug(bug

# var #local
#@var # instancia
# $var $ global

def achou_bug   #def(define)cria um metodo
	if $bug
		'Informe o desenvolvedor'
	else
		'Podemos ir para a producao'
	end
end

puts 'Qual o resultado do teste? 0 - Sem bugs, 1- Com bugs '
$bug = gets.to_i
$bug = ($bug == 1) ? true : false
puts achou_bug
