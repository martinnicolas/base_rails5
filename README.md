# Proyecto base Ruby On Rails 5

Este es un Proyecto base para la creación de proyectos usando Ruby On Rails.

Requisitos:

	* Ruby 2.4.0
	* Rails 5.0.7.2

Utilizando RVM (Ruby Version Manager) ejecutar:

	1- rvm install 2.4.0

	2- gem install rails -v 5.0.7.2


Una vez instalados todos todos los requerimientos ejecutar:

	1- git clone https://github.com/martinnicolas/base_rails5.git

	2- cd base_rails5

	3- rails g rename:app_to NEW_NAME (Por ejemplo, sistema_nuevo)

	4- rake db:create

	5- rake db:migrate

	6- rake db:seed

	7- rails s