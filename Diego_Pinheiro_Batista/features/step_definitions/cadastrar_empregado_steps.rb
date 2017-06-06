#Encode: UTF-8

Dado(/^que acesse a funcionalidade de cadastro de empregados$/) do
  visit 'http://opensource.demo.orangehrmlive.com/index.php/pim/addEmployee'

end

Quando(/^insiro dados validos$/) do
  fill_in('firstName', :with =>'Diego')
  fill_in('middleName', :with =>'Pinheiro')
  fill_in('lastName', :with =>'Batista')
  $teste = find(:xpath, '//*[@id="employeeId"]').value
  click_button('btnSave')
end

Entao(/^visualizo a mensagem$/) do |mensagem|
	page.should have_content mensagem
end