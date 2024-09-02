programa {
  funcao inicio() {
    cadeia nome 
    cadeia genero
    inteiro idade
    inteiro maiorIdade = 0
    cadeia maiorIdadeNome
    inteiro idadeAvancada =0
    inteiro mulheresTrinta = 0
    inteiro soma = 0
    inteiro contador = 0
    real media 

    enquanto(nome != "FIM"){//INICIO
      escreva("Digite seu nome: ")
      leia(nome)
      escreva("Digite seu genero: ")
      leia(genero)
      escreva("Digite sua idade: ")
      leia(idade)

      se(idade > maiorIdade){
        maiorIdade = idade
        maiorIdadeNome = nome
      }
      se(idade>50){
        idadeAvancada++
      }
      se(genero == "Feminino" e idade == 30){
        mulheresTrinta++
      }

      soma = soma + idade
      contador = contador + 1
     
    }//FIM

    media = soma / contador

    escreva("A) O nome e a idade da pessoa mais velha: ", maiorIdadeNome, " ", maiorIdade)
    escreva("B) Quantidade de pessoas com mais de 50: ", idadeAvancada)
    escreva("C) Quantidade de mulheres de 30 anos: ", mulheresTrinta)
    escreva("D) Media das idades: ", media)
    
    

  }
}
