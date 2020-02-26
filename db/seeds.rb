# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Usuarios
# ========

User.create(email: 'usuario@usuario.com', password: 'sumbudrule')
User.create(email: 'admin@admin.com', password: 'sumbudrule')

# Roles
# ========

Role.create(descripcion: 'usuario')
Role.create(descripcion: 'admin')

# UserRoles
# ========
UserRole.create(user_id: 1, role_id: 1)
UserRole.create(user_id: 2, role_id: 2)