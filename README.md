# Members Only!
This project was a means of practising how to implement **authentication and authorization**, marrying that with a relational model, forms and (finally on my part) basic styling.
The web app allows registered users to submit posts and view the posts of others. However, you cannot view the name of a post's author if you are not logged in! Names are visible to members only.
This app is on [Heroku](https://boiling-thicket-50706.herokuapp.com/).

## Tasks
Below are the tasks:
- [x] Add a relational model between a user/member and posts
  - A clear many-to-one relationship
- [x] Add authentication
  - Handled by the [Devise](https://github.com/heartcombo/devise) gem
    - Read a whole lot of documentation
  - I learnt to "roll" my own auth anyway because... why not?
- [x] Add forms
- [x] Add basic styles
  - Make a UI using [Bulma](https://bulma.io/documentation/overview/) (gem: https://github.com/joshuajansen/bulma-rails)

## Resources
Aside from the official documentation linked there weren't many interesting resources used. However, I will mention a couple interesting ones (to me); note that these are not necessarily relevant for you (if you're also doing TOP):
- Devise: why are there forms but not files?
  - https://michaelsoolee.com/rails-devise-views/
  - TL;DR there are files that Devise looks in which are not in your project directory 
- Bulma reference
  - https://www.youtube.com/watch?v=IiPQYQT2-wg
