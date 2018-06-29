# Projeto MAC0218 - Grupo 6 - "RU Finder"

Eduardo Nascimento , @Eduwzin

Gabriel Sarti      , @lordanb

Larissa Goto       , @larisala

Matheus Lima       , @DarknessCatt

# Descrição:  

O *RU Finder* é uma ferramenta que reúne os cardápios dos restaurantes universitários (*"bandeijões"*) da USP - Butantã e, a partir das preferências fornecidas pelo usuário, sugere a melhor opção do dia para ele. Também há a opção de avaliar e comentar as refeições e os restaurantes, para apresentar o cenário geral da reputação de cada opção e guiar o usuário à melhor alternativa.  
Feito com Ruby on Rails.

# Como instalar e executar o projeto em ambiente de desenvolvimento:

Para executar o projeto é necessário possuir o banco de dados __PostgreSQL (9.5.12)__ , o framework __Rails (5.1.6)__ e a pasta com todos os arquivos do nosso projeto __RU Finder__ , além disso também é necessário possuir __Ruby (2.4.1)__ .
Feito isso, executar o seguinte comando no terminal, dentro da pasta rufinder, para instalar as dependências do nosso projeto (encontradas no arquivo __Gemfile__):

`bundle install`

Para criar os databases do __PostgreSQL__ de teste e desenvolvimento e , em seguida, as tabelas execute:

`rails db:create` e `rails db:migrate`

Para carregar os dados padrão do banco de dados use:

`rails db:seed`

E o seguinte para inicializar o servidor local:

`rails server`

Após isso, o site poderá ser visto localmente pelo navegador pela url http://localhost:3000/ .

# Ambiente de produção:

O projeto RUFinder já se encontra em plataforma de produção. O grupo está utilizando o __Heroku__ e o site pode ser visto através da url https://rufinder.herokuapp.com .

# Como executar os testes

Para executar os __testes de unidade__ (modelos) basta estar dentro da pasta rufinder e executar o seguinte comando no terminal:
`rake spec`
Para executar os __testes de integração__ basta estar dentro da pasta rufinder e executar o seguinte comando no terminal:
`rake cucumber`
# Entregas:

__- Fase 1:__  Modelos dos bancos de dados, CRUD básicos, esqueleto do site (htmls da página inicial e formulários de acesso ao banco de dados)  

__- Fase 2:__  Adicionar as principais funcionalidades propostas pelo nosso site: avaliar as refeições, comentários e sugestões

__- Fase 3:__ Estilização do site (CSS), possível adição de funcionalidades extras, toques finais e correções de erros
