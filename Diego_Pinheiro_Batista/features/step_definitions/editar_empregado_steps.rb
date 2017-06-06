#encode: UTF-8

Dado(/^que acesse a funcionalidade de empregados cadastrados$/) do
	visit 'http://opensource.demo.orangehrmlive.com/index.php/pim/viewEmployeeList/reset/1' 
end                                                                          
                                                                             
Quando(/^edito um cadastro existente$/) do                                   
	fill_in('empsearch_id',:with=>$teste)
	click_button('searchBtn')
	find(:xpath, '//*[@id="resultTable"]/tbody/tr/td[2]/a').click
	click_button('btnSave')
	fill_in('personal[txtEmpFirstName]',:with=>$teste)
	fill_in('personal[txtEmpMiddleName]',:with=>$teste)
	fill_in('personal[txtEmpLastName]',:with=>$teste)
	click_button('btnSave')
end                                                                          