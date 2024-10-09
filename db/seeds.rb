# frozen_string_literal: true

puts 'Initialized seeds...'
State.destroy_all

# Add states
parana = State.create(name: 'Paraná')
santa_catarina = State.create(name: 'Santa Catarina')
rio_grande_do_sul = State.create(name: 'Rio Grande do Sul')

# Add cities
City.create([{ name: 'Curitiba', state: parana }, { name: 'Londrina', state: parana },
             { name: 'Maringá', state: parana }])
City.create([{ name: 'Florianópolis', state: santa_catarina }, { name: 'Joinville', state: santa_catarina },
             { name: 'Blumenau', state: santa_catarina }])
City.create([{ name: 'Porto Alegre', state: rio_grande_do_sul }, { name: 'Caxias do Sul', state: rio_grande_do_sul },
             { name: 'Pelotas', state: rio_grande_do_sul }])
puts 'Finished seeds!'
