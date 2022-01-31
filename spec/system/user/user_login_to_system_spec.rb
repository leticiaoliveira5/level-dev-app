# frozen_string_literal: true

require 'rails_helper'

feature 'User login to system' do
  it 'successfully' do
    user = create(:user)

    visit root_path
    fill_in 'E-mail', with: user.email
    fill_in 'Senha', with: user.password
    within('div.login_form') do
      click_on 'Entrar'
    end

    expect(page).to have_content(user.email)
    expect(page).to have_link('Sair')
  end

  it 'and log out' do
    user = create(:user)

    visit root_path
    fill_in 'E-mail', with: user.email
    fill_in 'Senha', with: user.password
    within('div.login_form') do
      click_on 'Entrar'
    end
    click_on 'Sair'

    expect(page).not_to have_content(user.email)
    expect(page).to have_link('Entrar')
  end
end
