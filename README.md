# HTTParty + Rspec + Rake

Projeto de exemplo para implementação de testes para API's Rest utilizando o HTTParty + Rspec + RAKE

## Ferramentas utilizadas:
- [VSCode](https://code.visualstudio.com/ "VSCode")
- [HTTParty](https://github.com/jnunemaker/httparty "HTTParty")
- [Rspec](https://github.com/rspec/rspec "Rspec")

## Recursos utilizados no projeto
- **Rspec**
	- describe
	- it
	- expect
- **Httparty**
	- get

## Estrutura de pastas

```
📦httparty_rspec
 ┣ 📂reports
 ┃ ┗ 📜rspec_results.html
 ┣ 📂spec
 ┃ ┣ 📜books_test.rb
 ┃ ┗ 📜spec_helper.rb
 ┣ 📜.rspec
 ┣ 📜Gemfile
 ┣ 📜Gemfile.lock
 ┣ 📜README.md
 ┗ 📜Rakefile
```

#### Instalar o bundler
`gem install bundler`


#### Executar o comando abaixo na raiz do projeto
`rake spec`