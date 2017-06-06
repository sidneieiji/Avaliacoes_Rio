#encode: UTF-8

Dado(/^que eu esteja no sistema OrangeHRM$/) do
  visit 'http://opensource.demo.orangehrmlive.com/'
end

Quando(/^faco o login$/) do
	fill_in('txtUsername', :with =>'Admin')
	fill_in('txtPassword', :with =>'admin')
	click_button('btnLogin')
end

Entao(/^login é efetuado com sucesso$/) do
	page.has_css?('a[id="welcome"]', :text => 'Admin', :visible => true)
end