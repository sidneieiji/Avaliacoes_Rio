	Dado(/^que eu acesse a pagina de login para editar$/) do
	   visit 'http://opensource.demo.orangehrmlive.com/'
	   fill_in('txtUsername',:with=>'Admin')
	 fill_in('txtPassword',:with=>'admin')
	 click_button('btnLogin')
	end

	Quando(/^eu pesquisar empregado existente/) do
	 click_link('menu_pim_viewPimModule')
	 click_link('menu_pim_viewEmployeeList')
	 fill_in('empsearch_employee_name_empName',:with=>'Diogo Tavares')
	 click_button('searchBtn')
	end

	Entao(/^edito suas informações$/) do
	click_link('0012')
 	 click_button('btnSave')
 	 fill_in('personal[txtEmpNickName]',:with=>'dtdiogo')
 	 click_button('btnSave')
	end
