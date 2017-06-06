Dado(/^que eu acesse a pagina de login$/) do
   visit 'http://opensource.demo.orangehrmlive.com/'
   fill_in('txtUsername',:with=>'Admin')
 fill_in('txtPassword',:with=>'admin')
 click_button('btnLogin')
end

Quando(/^eu inserir os dados/) do
 click_link('menu_pim_viewPimModule')
 click_link('menu_pim_addEmployee')
 fill_in('firstName',:with=>'Diogo')
 fill_in('middleName',:with=>'Tavares')
 fill_in('lastName',:with=>'Ferreira')
 check('chkLogin')
 fill_in('user_name',:with=>'dtferreira')
 fill_in('user_password',:with=>'dtf000')
 fill_in('re_password',:with=>'dtf000')
 click_button('btnSave')
end

Entao(/^cadastro efetuado com sucesso$/) do
 click_link('menu_pim_viewEmployeeList')
 fill_in('empsearch_employee_name_empName',:with=>'Diogo Tavares Ferreira')
 click_button('searchBtn')
 find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[2]/a').click
end