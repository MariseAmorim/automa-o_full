require_relative '../app/conta'

describe('Saque') do

    it('Saque do caixa') do
        conta = Conta.new('Marise')

        conta.saldo = 500

        conta.saque(100)

        # "Saque com sucesso aguarde a contagem das notas"
        expect(conta.mensagem).to eql "Saque com sucesso. Aguarde a contagem das notas!"
        #400
        expect(conta.saldo). to eql 400
    end

    it('Valor superior ao meu saldo') do

        conta = Conta.new('Fernando')
        conta.saldo = 100

        conta.saque(200)

        #Saldo insuficiente
        
        expect(conta.mensagem). to eql 'Saldo insuficiente'
        #100
        expect(conta.saldo). to eql 100

    end

    it ('Limite diário') do
        conta = Conta.new('Ricardo')
        conta.saldo = 1000

        conta.saque(701)

        #Valor maximo para saque eh de R$700
        expect(conta.mensagem). to eql "Valor máximo para saque diário é de R$ 700"
        #puts conta.mensagem
        #1000
        expect(conta.saldo). to eql 1000
    end

end