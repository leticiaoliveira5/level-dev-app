# frozen_string_literal: true

require 'rails_helper'

describe 'Admin register manufacturer' do
  it 'successfully' do
    user = create(:user, role: :admin)

    login_as user, scope: :user
    visit root_path
    click_on 'Fabricantes'
    click_on 'Registrar novo fabricante'

    fill_in 'Nome', with: 'Fiat'
    click_on 'Enviar'

    expect(page).to have_content('Fiat')
  end

  it 'and must fill all fields' do
    user = create(:user, role: :admin)

    login_as user, scope: :user
    visit root_path
    click_on 'Fabricantes'
    click_on 'Registrar novo fabricante'
    fill_in 'Nome', with: ''
    click_on 'Enviar'

    expect(page).to have_content('Nome não pode ficar em branco')
  end

  it 'and must be admin' do
    user = create(:user, role: :user)

    login_as user, scope: :user
    visit root_path

    expect(page).not_to have_link('Fabricantes')
  end

  it 'must be admin and access by url' do
    user = create(:user, role: :user)

    login_as user, scope: :user
    visit new_manufacture_path

    expect(current_path).to eq root_path
  end
end
