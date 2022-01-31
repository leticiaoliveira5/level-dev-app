# frozen_string_literal: true

require 'rails_helper'

describe 'Admin edits manufacture' do
  it 'successfully' do
    user = create(:user, role: :admin)
    create(:manufacture, name: 'Fiat')
    login_as user, scope: :user
    visit root_path
    click_on 'Fabricantes'
    click_on 'Fiat'
    click_on 'Editar'
    fill_in 'Nome', with: 'Honda'
    click_on 'Enviar'

    expect(page).to have_content('Honda')
  end

  it 'and must fill all fields' do
    user = create(:user, role: :admin)
    create(:manufacture, name: 'Fiat')
    login_as user, scope: :user
    visit root_path
    click_on 'Fabricantes'
    click_on 'Fiat'
    click_on 'Editar'

    fill_in 'Nome', with: ''
    click_on 'Enviar'

    expect(page).to have_content('Nome não pode ficar em branco')
  end

  it 'and must be admin' do
    user = create(:user)
    create(:manufacture, name: 'Fiat')
    login_as user, scope: :user
    visit root_path

    expect(page).not_to have_content('Fabricantes')
  end
end
