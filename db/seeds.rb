subsidiary = Subsidiary.create(name: 'Almeidinha Motors',
                               cnpj: '57.669.960/0001-66')
address = Address.create(street: "Rua da Consolação", number: "100",
                         complement: " conj. 66", neighborhood: "Cerqueira César",
                         city: "São Paulo", state: "SP", addressable: subsidiary)
User.create(email: 'user@email.com', password: '123456', subsidiary: subsidiary,
            role: :user)
User.create(email: 'admin@email.com', password: '123456', role: :admin)
category_a = Category.create(name: 'A', daily_rate: 50.0)
category_b = Category.create(name: 'B', daily_rate: 50.0)
category_c = Category.create(name: 'C', daily_rate: 50.0)
RentalPrice.create(category: category_a, subsidiary: subsidiary,
                   daily_rate: 32.0)
RentalPrice.create(category: category_b, subsidiary: subsidiary,
                   daily_rate: 22.0)
RentalPrice.create(category: category_c, subsidiary: subsidiary,
                   daily_rate: 36.0)
Manufacture.create(name: 'Fiat')
Manufacture.create(name: 'Ford')
FuelType.create(name: 'Gasolina')
FuelType.create(name: 'Álcool')
addon_gps = Addon.create(name: 'GPS', description: 'Aparelho de GPS', daily_rate: 10.0)
addon_bebe = Addon.create(name: 'Bebê conforto', description: 'Bebê conforto da marca X',
                          daily_rate: 20.0)
Addon.create(name: 'Porta copos', description: 'Suporte para copos', daily_rate: 5.0)
AddonItem.create(addon: addon_gps, registration_number: '123456', status: :available)
AddonItem.create(addon: addon_gps, registration_number: '789010', status: :unavailable)
AddonItem.create(addon: addon_bebe, registration_number: '1234AR', status: :available)
AddonItem.create(addon: addon_bebe, registration_number: '789010', status: :unavailable)

Insurance.create(category: category_a, name: 'Seguro Básico',
                 daily_rate: 20.0)
Insurance.create(category: category_a, name: 'Seguro Terceiros',
                  daily_rate: 30.0)
