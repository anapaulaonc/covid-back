# Documentação
## _Ruby on Rails_


## Para fazer funcionar no seu PC pela primeira vez:
```sh
bundle install
rails db:create 
rails db:migrate
rails db:seed
```
## Rodar o programa:
```sh
rails s
```

## Se mudar a seeds e querer repopular o banco:
```sh
rails db:drop 
rails db:migrate
rails db:seed
```