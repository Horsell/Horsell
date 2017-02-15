SQL
---

- `SELECT` : Correspond à la selection de colonne    
- `FROM` : Correspond à la selection de table    
- `WHERE` : Permet d'établir une condition
- `ORDER BY` : Permet de trier    
de maniere ascendante : `ASC`    
ou de maniere descandante : `DESC`
- `COUNT` : Permet de compter les lignes de chaque colonnes. `Ex : SELECT COUNT (\*) FROM DOCTOR` va selectionner et compter sur toute les lignes la colonnes docteur
- `GROUP BY` : regroupe et affiche sur une colonnes l'ensemble de la selection definie. `EX : SELECT COUNT (\*), speciality FROM doctors GROUP BY doctors`
- `JOIN` : Permet de faire la relation en en deux tables. `EX : SELECT * FROM inhabitants JOIN cities ON cities.id = inhabitants.city_id WHERE cities.name = 'Paris'`
![Methode join](https://karr.lewagon.org/assets/db/sql_query_result_join_1-391b151c81c929b726e1051c6ddaadc40ff469ebea8659a565769b80d0f08cec.png "google logo")

crud (CREATE READ UPDATE DELETE)
---

- `INERT INTO `:  Permet de d'inserer une nouvelle ligne dans une table.
    `EX INSERT INTO doctors (name, age, specialty)
        VALUES ('Dr. Dolladille', 45, 'Dentist'): 
        INSERT INTO table (columns) VALUES (values)`.
- `UPDATE` : Permet de mettre a jour un record sur une table.    
EX : `UPDATE doctors SET age = 40, name = 'John Smith' WHERE id = 3`.

- `DELETE` : Permet de supprimer un record dans une table.    
EX : `DELETE FROM doctors WHERE id = 32`.

`DROP` :  Cette requete sql supprimer toute la table.

Opérateur conditionnel
------

- `AND` : correspond au 'et'
- `OR` : Correspond au 'ou'
- `LIKE` : Ce terme fait office de pseudo moteur de recherche.    `EX : SELECT * FROM doctors WHERE specialty LIKE '%Surgery'`
- `%` : % suivie d'une chaine de caractere recherche tout les mots correspond a la chaine de carcatere specifier quelque soit l'endroit dans les tables ou colonnes.

sql lite
---

- `.mode column` : Active le mode colonne.
- `.headers on` : Active le mode header.

Ative Record
----

La methode pour donner une relation entre deux table ce fait de la maniere suivnte :

- class Doctor < ActiveRecord::Base    
  has_many :interns    
  end


- class Intern < ActiveRecord::Base    
    belongs_to :doctor    
  end
  
  Pour connaitre la liste de tous les records d'une table lorsqu'il ya une relation one-to_many :
 int1 = Intern.first    
 int1.Doctors
 
 
Pour recuperer les elements d'une table a partir d'une autre table:
* class Doctor < ActiveRecord::Base    
   has_many :interns    
   has_many :consultations     
 
   has_many :patients, through: :consultations    
 end
 
 Donc :    
 doctor = Doctor.new    
 doctor.patients
 
 Pour ajouter une clé étrangère il faut :
 db/migrate/20141027201300_add_intern_reference_to_patients.rb    
 
 class AddInternReferenceToPatients < ActiveRecord::Migration[5.0]
   def change    
     add_reference :patients, :intern, foreign_key: true, index: true    
   end    
 end    
 Ne pas oublier de rajouter la valeur index a True qui permettra d'optimisation la recherche dans une base de donnee.
 
 Pour savoir si la requete est valide avant de faire un save : `doc.valide?`
 Pour savoir pourquoi la requete n'est passé (Rollback) : `doc.errors`
 
 Connaitre si une valeur est unique :  `uniqueness: true` EX: `validates :last_name, uniqueness: true`