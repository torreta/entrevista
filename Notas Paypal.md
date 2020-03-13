:::::: api
# por ser una subcarpeta de un git (que contiene ambos proyectos), se creo con el comando
rails new paypal-api --api -T --skip-git

# devise token auth
https://github.com/lynndylanhurley/devise_token_auth
rails g devise_token_auth:install User auth

:::::: front
# la aplicacion react la cree con 
 npx create-react-app paypal-front

# le agrego react core (app - para maquetado)
https://material-ui.com/getting-started/installation/
 yarn add @material-ui/core

::::::: avances (de ser posible ver comentarios de git)
# ---------- scafolds usados (menos el remake) (+seeds de bancos)
rails new paypal-api --api -T --skip-git
 
rails g scaffold profile cedula:integer name:string  (ok)

rails g scaffold bank name:string code:integer (ok)

rails g scaffold bank_account amount:float phone:integer bank:references user:references (ok)

rails g scaffold transaction amount:float sender_account_id:references:bank_account receiver_account_id:references:bank_account sender_id:user_id:references receiver_id:user_id:references 
date:timestamp (remake)

rails g scaffold transaction amount:float sender_account:references  receiver_account:references sender:references receiver:references date:timestamp (ok)

# ref
https://material-ui.com/es/components/menus/

# commandos
> levantar en otro puerto (choca con npx)
rails s -p 3001 

> levantar el app con  (puerto 3000)
yarn start

# --------- Pantallas

 login - registro (ok, maquetado funciona, sin redireccion) (/ -/signin - /signup)

 Dashboard - intento de pantalla principal despues de loguear (solo visual) (/dashboard)

 perfil 

 boton logout (maquetado funciona en api )

 tranferir

 transacciones (maquetado)
