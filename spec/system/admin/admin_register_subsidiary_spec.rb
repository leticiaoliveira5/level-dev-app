# frozen_string_literal: true

require 'rails_helper'

describe 'Admin register subsidiary' do
  it 'successfully' do
    user = create(:user, role: :admin)
    create(:category, name: 'A', daily_rate: 51.0)
    create(:category, name: 'B', daily_rate: 54.0)

    login_as user, scope: :user
    visit root_path
    click_on 'Filiais'
    click_on 'Registrar nova filial'
    fill_in 'Nome', with: 'Rent a car'
    fill_in 'CNPJ', with: '75.415.539/0001-00'
    fill_in 'Logradouro', with: 'Vila do Chaves'
    fill_in 'Número', with: '71'
    fill_in 'Complemento', with: 'Dentro do barril'
    fill_in 'Bairro', with: 'México'
    fill_in 'Cidade', with: 'São Paulo'
    fill_in 'Estado', with: 'SP'
    click_on 'Enviar'

    expect(page).to have_content('Rent a car')
    expect(page).to have_content('75.415.539/0001-00')
    expect(page).to have_content('Endereço')
    expect(page).to have_content('Vila do Chaves, nº 71')
    expect(page).to have_content('Dentro do barril')
    expect(page).to have_content('São Paulo')
    expect(page).to have_content('SP')
    expect(page).to have_content('R$ 51,0')
    expect(page).to have_content('R$ 54,0')
  end

  it 'and must fill all fields' do
    user = create(:user, role: :admin)

    login_as user, scope: :user
    visit root_path
    click_on 'Filiais'
    click_on 'Registrar nova filial'
    click_on 'Enviar'

    expect(page).to have_content('Nome não pode ficar em branco')
    expect(page).to have_content('CNPJ não pode ficar em branco')
    expect(page).to have_content('Logradouro não pode ficar em branco')
    expect(page).to have_content('Número não pode ficar em branco')
    expect(page).to have_content('Bairro não pode ficar em branco')
    expect(page).to have_content('Cidade não pode ficar em branco')
    expect(page).to have_content('Estado não pode ficar em branco')
  end

  it 'and must be admin' do
    user = create(:user)

    login_as user, scope: :user
    visit root_path

    expect(page).not_to have_link('Filiais')
  end

  it 'must be admin and uses url' do
    user = create(:user)

    login_as user, scope: :user
    visit new_subsidiary_path

    expect(current_path).to eq root_path
  end
end
