# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
myscore=Score.create(time:"3/4", key:"c minor", title: "hey", content: "a4 b c d e f ")
o=Musicalinstrument.create(name: "violin")
x=Musicsymboltype.create(name: "Nuance")
y=Musicsymbol.create(musicalsymboltype_id: x.id, name: "\\f")
Musicsymbol.create(musicalsymboltype_id: x.id, name: "\\p")
z=Musicaltechnique.find_or_create_by(name: "vitesse de l'archet", myattribute: "vitesse", maxvalue: "quart croche", minvalue: 'ronde')
h=Musicaltechnique.find_or_create_by(name: "nuance", myattribute: "valeur nuance", maxvalue: "\\fff", minvalue: '\\pp')
e=Musicaltechnique.find_or_create_by(name: "pression de l'archet", myattribute: "appuyer", maxvalue: "100", minvalue: '0')
d=Musicaltechnique.find_or_create_by(name: "allonger l'archet", myattribute: "longueur", maxvalue: "longueur archet", minvalue: '0')
c=Musicaltechnique.find_or_create_by(name: "endroit l'archet", myattribute: "distance", maxvalue: "loin", minvalue: 'pres')
b=Musicaltechnique.find_or_create_by(name: "place de l'archet", myattribute: "lieu", maxvalue: "pointe", minvalue: 'talon')

#allonger, plus aller plus vite, garder meme son
a=Musicaltechniquescore.create(score_id: myscore.id, thismomentvalue: "-1", musicaltechnique_id: d.id, myvalue: "tout l'archet", mypercent: "100")
f=Musicaltechniquescore.create(score_id: myscore.id, thismomentvalue: "0", musicaltechnique_id: d.id, myvalue: "tout l'archet", mypercent: "100")
f=Musicaltechniquescore.create(score_id: myscore.id, thismomentvalue: "0", musicaltechnique_id: e.id, myvalue: "appuyer moins", mypercent: "100")
f=Musicaltechniquescore.create(score_id: myscore.id, thismomentvalue: "0", musicaltechnique_id: z.id, myvalue: "1 noire et demi", mypercent: "100")#je donne autant de pourcentage de son que juste avant
a=Musicaltechniquescore.create(thismomentvalue: "0", musicaltechnique_id: d.id, myvalue: "tout l'archet", mypercent: "100")

