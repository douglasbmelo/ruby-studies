class Pessoa
    attr_accessor :nome, :sobrenome

    def nome_completo
        "#{nome} #{sobrenome}"
    end    
end

douglas = Pessoa.new
douglas.nome = "douglas"
douglas.sobrenome = "melo"
puts douglas.nome_completo
