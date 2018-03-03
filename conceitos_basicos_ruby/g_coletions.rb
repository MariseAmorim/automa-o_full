#-*- coding: utf-8 -*-
$arr = []
def add 
	puts "Informe um cenario de teste"
	name = gets.chomp
	$arr << name
end

def list
	if $arr.count == 0 #count.zero?
	puts 'Vetor vazio'
	return	
	end	
	puts "Listando casos de teste: "
	$arr.each_with_index do |name,index|
		puts "ID: #{index},name: #{name}"
	end	
end

def remove_name
	puts 'Informe o cenario a ser removido'
	name = gets.chomp
	puts 'Nenhum item removido'if $arr.delete(name).nil?
end

def remove_id
	list
	puts 'Informe o ID do CT a ser removido'
	id = gets.to_i
	puts 'Nenhum item removido' if $arr.delete_at(id).nil?
	
end
begin
	puts '######Test Link #######'
	puts '1- Adicionar CT'
	puts '2- Listar cenarios '
	puts '3-Remover CT por name'
	puts '4- Remover CT por id'
	puts '######################'

	option = gets.to_i

	case option
	when 1
		add
	when 2
		list
	when 3
		remove_name
	when 4
		remove_id
	else 
		puts 'Opcao invalida'
	end
end while option <5


