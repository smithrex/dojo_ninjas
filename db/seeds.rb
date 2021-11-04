# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#bin/rails db:seed
#tarea 1 de consola CodingDojo

Ninja.where(dojo_id: 1).destroy_all
Dojo.where(id: 1).destroy_all

Ninja.where(dojo_id: 2).destroy_all
Dojo.where(id: 2).destroy_all

Ninja.where(dojo_id: 3).destroy_all
Dojo.where(id: 3).destroy_all

#si aplico el bin/rails db:seed en shell, no manda error. Los busca, si los encuentra, los destruye, sino, no ocurre nada

#si aplico Dojo.find(1).destroy all, al aplicar db:seed puede mandar error en consola-no encuentra los id.
puts "Tarea 1. Hecho." #Lo va a devolver al ejecutar el comando bin/rails db:seed

#Tarea 2 Crear 3  Dojos adicionales

h = Dojo.new
h.name = "Dojo 1"
h.city = " Santiago"
h.state = "AH"
h.save

h = Dojo.new
h.name = "Dojo 2"
h.city = " Recoleta"
h.state = "RE"
h.save

h = Dojo.new
h.name = "Dojo 3"
h.city = "Providencia"
h.state = "PA"
h.save

puts "tarea 2. Hecho"

#Tarea 3
dojo = Dojo.new
dojo.save
puts dojo.errors.messages


puts "tarea 3. Hecho"

#Tarea 4 crear 3 ninjas que pertenezcan al primer dojo que creó

n = Ninja.new
n.first_name = "Ninja 1"
n.last_name = "Ninja N 1"
n.dojo = Dojo.where(name: "Dojo 1").first
n.save

n = Ninja.new
n.first_name = "Ninja 2"
n.last_name = "Ninja N 2"
n.dojo = Dojo.where(name: "Dojo 1").first
n.save

n = Ninja.new
n.first_name = "Ninja 3"
n.last_name = "Ninja N 3"
n.dojo = Dojo.where(name: "Dojo 1").first
n.save

puts "tarea 4. Hecho."

#Tarea 5 y 6. Crear 3 ninjas por cada dojo (2 y 3)

n = Ninja.new
n.first_name = "Ninja 4"
n.last_name = "Ninja N 4"
n. dojo = Dojo.where(name: "Dojo 2").first
n.save

n = Ninja.new
n.first_name = "Ninja 5"
n.last_name = "Ninja N 5"
n. dojo = Dojo.where(name: "Dojo 2").first
n.save

n = Ninja.new
n.first_name = "Ninja 6"
n.last_name = "Ninja N 6"
n. dojo = Dojo.where(name: "Dojo 2").first
n.save

n = Ninja.new
n.first_name = "Ninja 7"
n.last_name = "Ninja N 7"
n. dojo = Dojo.where(name: "Dojo 3").first
n.save

n = Ninja.new
n.first_name = "Ninja 8"
n.last_name = "Ninja N 8"
n. dojo = Dojo.where(name: "Dojo 3").first
n.save

n = Ninja.new
n.first_name = "Ninja 9"
n.last_name = "Ninja N 9"
n. dojo = Dojo.where(name: "Dojo 3").first
n.save

puts "Tarea 5 y 6. Hecho."
puts "Ninjas: #{Ninja.all.count}" #si salen muchos numeros, es porque hemos ejecutado bd:seed varias veces

#Tarea 7 Asegurate de como obtener a los ninjas.

#find, requiere el ID

#where, requiere cualquier parámetro, ej : name.
#where retorna un array...por esta razón se coloca .first
puts Dojo.where(name: "Dojo 1").first.ninja

puts "tarea 7. Hecho"

#tarea 8 Como recuperar a los ninjas del segundo dojo solo los nombres, ordenados de forma descendiente por el campo "created _at" 

puts Dojo.where(name: "Dojo 2").
first.ninja.order("created_at desc").
pluck(:first_name)
puts "tarea 8 realizado."

#Tarea 9 Elimine el segundo dojo. Como podrias ajustar tu modelo para eliminar a todos los ninjas asociados al dojo en automático => pide un solo comando.


puts "Antes: #{Dojo.where(name: "Dojo 2").count}"

Dojo.where(name: "Dojo 2").first.destroy

puts "Despues: #{Dojo.where(name: "Dojo 2").count}"

puts "Tarea 9 Hecho"

