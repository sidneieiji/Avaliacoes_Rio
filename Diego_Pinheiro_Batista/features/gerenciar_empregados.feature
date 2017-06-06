#language: pt
#encode: UTF-8

	@Desafio
	Funcionalidade: Gerenciar empregados
		Eu como administrador sistema OrangeHRM
		Quero acessar as resposabilidades de recursos humanos 
		Para gerenciar os perfis dos empregados


		Contexto:
			Dado que eu esteja no sistema OrangeHRM
  			Quando faco o login
  			Entao login é efetuado com sucesso

		
		Cenario: Cadastrar empregado com sucesso
			Dado que acesse a funcionalidade de cadastro de empregados
			Quando insiro dados validos
			Entao visualizo a mensagem
  			"""
  			Personal Details
  			"""

		Cenario: Editar empregado com sucesso
			Dado que acesse a funcionalidade de empregados cadastrados
			Quando edito um cadastro existente 
			Entao visualizo a mensagem
			"""
			Successfully Saved	
			"""