# MalayMe

[MalayMe](https://malayme.herokuapp.com/) is a language learning platform to help users learn Malay. The site contains two main features. The first being a library of usesul videos teaching the language. The other being a Q&A platform where users can ask others questions regarding the language, encouraging a community based learning. This project was built in Ruby using Ruby on Rails Framework, Semantic UI, jQuery and PostgreSQL.

This is a collaboration project by [me](https://github.com/saufm68), [Chloe](https://github.com/ChloeLiang) and [D Sen](https://github.com/wandsen). Please visit our github profiles to see our other projects.

## Wireframes

These are the initial wireframes for the application. The wireframes were donne on draw.io. As we progressed further into the project, we decided to change certain features in the final outcome to make it look more appealing.

![homepage wireframe](./wireframes/wireframe-home.png)
![profile page wireframe](./wireframes/wireframe-1.png)
![video library wireframe](./wireframes/wireframe-lib.png)
![Q&A page wireframe](./wireframes/wirefram-q&a.png)
![ask question page wireframe](./wireframes/wireframe-ask.png)
![question page wireframe](./wireframes/wireframe-question.png)

## Getting Started

These instructions will help you clone the project and get it running on your local machine.

### Prerequisites

1. Install Ruby on Rails
2. Install PostgreSQL
3. Create a Cloudinary account

### Setting Up

To use the Cloudinary Ruby on Rails library, you have to configure at least your cloud_name, api_key and api_secret.
You can download your customized `cloudinary.yml` configration file through Management Console and put it under
the `config` directory of this Rails project.

Here is an example of a `cloudinary.yml` file:

```yml
production:
  cloud_name: 'sample'
  api_key: '874837483274837'
  api_secret: 'a676b67565c6767a6767d6767f676fe1'
  secure: true
  cdn_subdomain: true
```

Install all dependencies in Gemfile:

```bash
bundle install
```

Start the development server:

```bash
rails server
```

Open [http://localhost:3000](http://localhost:3000) to view it in browser.

## Deployment

These instructions is to deploy the app on heroku.

### Deploy

Create a Heroku app via the command line:

```bash
heroku create YOUR_APP_NAME_HERE
```

Add, and commit all your data to git. Then push it to Heroku:

```bash
git push heroku master
```

### Set Up Database

On heroku, add Heroku Postgres as an add-on.

Then, enter the following commands via the command line to set up the database and populate it:

```bash
heroku run rake db:migrate
heroku run rake db:seed
```

### Configure Cloudinary

Set up the configurations for your cloudinary account. This can be done on the command line or on heroku itself.
To set up the configurations via the command line, enter the following commands into your terminal:

```bash
heroku config:set CLOUD_NAME=<placeholder>
heroku config:set API_KEY=<placeholder>
heroku config:set API_SECRET=<placeholder>
```
