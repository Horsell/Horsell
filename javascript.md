- La definition d'un hash en Javascript n'existe pas, sa s'appel un objet.
- l'interpolation existe en javascript depuis l'ES6

- ESlint est un outil qui verifie la syntaxe du langage.
- Le camelCase est une convention en Javascript.
- Un prototype dans une classe est simplement le fait de repertorier toute les arguments d'une fonction.
EX : `var User = function(firstName, lastName) {
  this.firstName = firstName;
  this.lastName = lastName;
}

User.prototype.fullName = function() {
  return this.firstName + " " + this.lastName;
}

var john = new User("John", "Smith");
john.fullName()
// => "John Smith"`

- Ne pas utiliser de 'foreEach' en jQuery

##### Hide & Show elements
`<div id="wagon">
  Lorem ipsum...
</div>

$('#wagon').hide();
$('#wagon').show();`

##### Add / Remove classes

`<ul>
  <li class="lead">Paul</li>
  <li class="lead">John</li>
  <li>George</li>
  <li>Ringo</li>
</ul>

$('.lead').addClass('bold');`

##### Read/Write inputs

`<!-- Some HTML -->
<input name="email" id="email" value="bob@sponge.com" />

Read

var email = $('#email').val();
// => 'bob@sponge.com'

Write

$('#email').val('patrick@star.com');`


La methode append ajoute une balise avec la valeur qu'on lui aura defini.
EX : `var paragraph = $('<p>').text("Hello I'm new here");

$('body').append(paragraph);

<!-- Result HTML -->
<body>
  <p>Hello I'm new here</p>
</body>`


jQuery
======

- `blur` : Le blur est l'inverse du `focus`
- `keyup` : Est le fait de retirer la souris sur un bouton.

- swipebox : Librairie de gestion de photos.
- smoothscroll : librairie qui permet d'avoir un scroll fluide.

