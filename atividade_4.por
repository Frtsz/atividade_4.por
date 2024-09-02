programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    inteiro menu
    cadeia sair="n"

    enquanto(sair=="n")
    {
      limpa()
      escreva(".=======> Atividade A <=====.\n")
      escreva("|___________________________|\n")
      escreva("| 4_IMC                     |\n")
      escreva("| 5_Celsius - Fahrenheit    |\n")
      escreva("| 6_Fahrenheit - Celsius    |\n")
      escreva("| 7_Quadrado da soma        |\n")
      escreva("| 8_Arrumado código         |\n")
      escreva("| 9_Divisão e resto         |\n")
      escreva("|...........................|\n")
      escreva("|==> ")
      
      faca
      {
        leia(menu)
      } enquanto(menu<4 ou menu>9)

      limpa()

      escolha(menu)
      {
        caso 4:

        escreva("IMC\n")

        real peso, altura, imc

        escreva("Sua altura: ")
        leia(altura)
        escreva("Seu peso: ")
        leia(peso)

        enquanto(peso!=0 e altura!=0)
        {
          imc=peso/(altura*altura)
          imc=mat.arredondar(imc, 4)

          escreva("IMC= "+imc+"\n")

          se(imc<18.5)
          {
            escreva("Abaixo do peso")
          }
          senao se(imc>=18.5 e imc<25)
          {
            escreva("Peso normal")
          }
          senao se(imc>=25 e imc<30)
          {
            escreva("Sobrepeso")
          }
          senao se(imc>=30 e imc<40)
          {
            escreva("Obesidade grau 1")
          }
          senao
          {
            escreva("Obesidade grau 2")
          }

          escreva("\n\n")
          escreva("Sua altura: ")
          leia(altura)
          escreva("Seu peso: ")
          leia(peso)
        }

        pare

        caso 5:

        escreva("Celsius - Fahrenheit\n")

        cadeia laco = ""
        real celcius, fahrenheit

        enquanto(laco!="2")
        {
          escreva("Temperatura em calcius: ")
          leia(celcius)
          
          fahrenheit=(9*celcius+160)/5

          escreva("Temperatura Fahrenheit: "+fahrenheit+"")

          escreva("\n\nDeseja continuar?")
          escreva("\n<enter> para sim | 2 para não\n")
          leia(laco)
          escreva()
        }

        pare

        caso 6:

        escreva("Fahrenhei - Celsius\n")

        cadeia laco = ""
        real celcius, fahrenheit

        enquanto(laco!="2")
        {
          escreva("Temperatura em fahrenheit: ")
          leia(fahrenheit)
          
          celcius=(fahrenheit-32)*(5/9)

          escreva("Temperatura celcius: "+celcius+"")

          escreva("\n\nDeseja continuar?")
          escreva("\n<enter> para sim | 2 para não\n")
          leia(laco)
          escreva()
        }

        pare

        caso 7:

        escreva("Quadrado da Soma\n")

        real n1, n2, resposta

        escreva("Digite dois números:\n")
        leia(n1,n2)

        resposta = (n1+n2)*(n1+n2)

        escreva("("+n1+" + "+n2+")² = "+resposta+"")

        pare
        
        caso 8:

        escreva("Arrumando Código\n")

        cadeia nome
        caracter sexo
        inteiro idade, soma=0, numm=0, numf=0, pessoas=0, ana=0, antonio45=0, mulheres23=0
        real media

        escreva("Digite seu nome: ")
        leia(nome)

        enquanto(nome!="FIM")
        {
          escreva("Digite a sua idade: ")
          leia(idade)
          escreva("Digite seu sexo (M/F): ")
          leia(sexo)

          se(sexo=='F')
          {
            numf++
          }
          senao se(sexo=='M')
          {
            numm++
          }
          se(nome=="Ana")
          {
            ana++
          }
          se(nome=="Antonio" e idade == 45)
          {
            antonio45++
          }
          se(sexo=='F' e idade==23)
          {
            mulheres23++
          }

          pessoas++
          soma=soma+idade

          escreva("Digite seu nome: ")
          leia(nome)
        }
        
        se(pessoas!=0)
        {
          escreva("\nO número de mulheres foi: "+numf)
          escreva("\nO número de homens foi: "+numm)
          escreva("\nO número total de pessoas foi: "+pessoas)
          escreva("\nA soma de todas as idades foi: "+soma)

          media=soma/pessoas

          escreva("\nA méda das idades é: "+media)
          escreva("\nO total de pessoas com o nome Ana foi: "+ana)
          escreva("\nO total de pessoas com o nome Antonio e com 45 anos foi: "+antonio45)
          escreva("\nO número de mulheres com 23 anos foi: "+mulheres23)
        }

        pare
        
        caso 9:

        escreva("Divisão e Resto\n")

        real x=1, y=1

        escreva("digite o valor de x: ")
        leia (x)
        escreva("digite o valor de y: ")
        leia(y)

        enquanto(x!=0 ou y!=0)
        {
          enquanto(y==0)
          {
            escreva("Y náo pode ser 0: ")
            leia(y)
          }
    
          escreva(""+x+" / "+y+" = "+(x/y)+"")
          escreva("\n"+x+" % "+y+" = "+(x%y)+"\n\n")

          escreva("digite o valor de x: ")
          leia (x)
          escreva("digite o valor de y: ")
          leia(y)
        }

        pare
      }

      escreva("\nSair? (s/n)\n")
      leia(sair)
    }
  }
}
