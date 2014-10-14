def login_admin
  login(create(:usuario_admin))
end

def login_instituto
  login(create(:usuario_instituto))
end

def login(usuario = nil)
  usuario ||= create(:usuario)
  visit new_usuario_session_path
  fill_in 'E-mail', with: usuario.email
  fill_in 'Senha', with: SENHA
  click_button 'Entrar'
end

def logout
  visit root_path
  expect(page).to have_content /.+\@.+\..+/
  click_link 'Sair' rescue nil
  expect(page).to_not have_content /.+\@.+\..+/
end
