# Introduction a Rails
----
- Pour creer des pages rails, il faut les generer a travers la ligne de commande : `rails generate controller NOMDELAPAGE`.    
  Un dossier sera automatiquement creer dans le `controller`, dans la `view` ainsi que dans la `route`

- Pour changer la maniere dont rails affiche les pages present dans la `route` si l'on souhaite afficher les pages du controller sans avoir toute les infos du chemin de destination de la page dans l'url il faut le signaler dans la `route` par : `=>` ex : `get 'about' => "NOMDELAPAGE#about"`.    
  La convention rails demande de mettre un `#` entre la route et l'action du controller comme le montre l'exemple.

- le mot cle `root` equivaut a un `get`.

- Pour afficher la liste de tout les routes, dans le terminal : `rails routes`

## Parametre HTTP
----
- Pour recuperer un element en parametre de l'url ex : `http://localhost:3000/about?first_name=yannic&last_name=horsell`


- Lors d'un post, pour l'envoi d'un formulaire par exemple, Rails refusera l'affichage en -POST- meme si la page a été définis dans la route.     
  Rails attend un -Token d'authenticity- pour s'assurer qu'il s'agit bien lors du `POST` d'un controller generer par Rail lui meme.    
  Il sera necessaire de rajouter le token dans le formulaire dans notre exemple.
  ex: `<%= hidden_field_tag :authenticity_token, form_authenticity_token %>`
  Dans le formualire : `<!-- app/views/pages/home.html.erb -->
<form action="/restaurants" method="post">
  <%= hidden_field_tag :authenticity_token, form_authenticity_token %>
  <input type="text" name="name">
  <input type="text" name="address">
  <input type="submit">
</form>`

#### Helper
---
- Lors de l'édition d'une balise <\a href>, il ne faut ~Jamais~ utiliser de chemin relatif pour renseigner la destination d'une page, L'utilisation de -Helper- est recommandé.
`<%= link_to ANCHOR_TEXT, ANCHOR_URL %>`

- pour rajouter sois meme ces prfie , il fait aouter le prefixe. `as:` dans la route -EX :- `get 'pages/contact', as:"contact"`


## Tools
----
Liste de gems permettant de faciliter le debug :
1- gem `"better\_errors"`
2- gem `"binding\_of\_caller"`



