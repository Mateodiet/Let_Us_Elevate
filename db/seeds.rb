require 'open-uri'
require 'json'

p "clean database"
UserChallenge.destroy_all
Challenge.destroy_all
UserDesign.destroy_all
User.destroy_all
Design.destroy_all

victor = User.create!(date: "93-07-24 16:35", timezone: "Europe/Paris", city: "Brest", country: "France", email: "lebret.victor02@gmail.com", password: "123456", username: "Victor")
p "#{User.count} user created"

url = "https://api.bodygraphchart.com/v221006/hd-data?api_key=#{ENV["API_KEY"]}&date=#{victor.date}&timezone=#{victor.timezone}"

design = JSON.parse(URI.open("#{url}").read)

strategy = design["Properties"]["Strategy"]["id"]
type = design["Properties"]["Type"]["id"]
authority = design["Properties"]["InnerAuthority"]["id"]
notself = design["Properties"]["NotSelfTheme"]["id"]

vic_design = Design.create!(
  strategy: strategy,
  authority: authority,
  notself: notself,
  name_type: type
)

p "#{Design.count} design create"

victor_design = UserDesign.create!(user: victor, design: vic_design, image: File.open(Rails.root.join('app', 'assets', 'images', 'vic_design.png')), description: "")

p "#{UserDesign.count} user design create"


challenge = Challenge.create!(title: "Prise de décision", description: "Prendre des décisions en analysant et en prenant du temps au lieu de suivre ton intuition sur le moment", design: vic_design )
challenge_2 = Challenge.create!(title: "Observer", description: "Observer ses propres réactions lorsque les autres ne te comprenent pas, ne t'acceptent pas ou ne suivent pas ton mouvements", design: vic_design )
challenge_3 = Challenge.create!(title: "Se rendre compte de l'impact", description: "Faire une liste de spersonnes pouvant être impactées par tes actions et tes décisions", design: vic_design )
challenge_4 = Challenge.create!(title: "Mode spectateur", description: "Ne pas initier et attendre que les autres fassent le premier pas ou t'invitent dans leurs oportunités", design: vic_design )
challenge_5 = Challenge.create!(title: "Vaincre ses peurs", description: "Ne pas avoir peur de ta colère et tenter de la faire taire sans l'exprimer", design: vic_design )
challenge_6 = Challenge.create!(title: "Réagir à ses intentions", description: "Oublier ou refuser d'informer et dissimuler tes projets ou tes intentions par peur d'être controlé.e ou empêché.e", design: vic_design )
challenge_7 = Challenge.create!(title: "Se clarifier", description: "Clarifier ses intentions avant de se lancer", design: vic_design )
# challenge_8 = Challenge.create!(title:"Se rendre compte de l'impact", description:"Faire une liste de spersonnes pouvant être impactées par tes actions et tes décisions", design: vic_design )
# challenge_9 = Challenge.create!(title:"Se rendre compte de l'impact", description:"Faire une liste de spersonnes pouvant être impactées par tes actions et tes décisions", design: vic_design )

p "#{Challenge.count} challenge created"

UserChallenge.create!(challenge: challenge, user: victor,status: "réussi")
UserChallenge.create!(challenge: challenge_2, user: victor,status: "réussi")
UserChallenge.create!(challenge: challenge_3, user: victor,status: "planifié")
UserChallenge.create!(challenge: challenge_4, user: victor,status: "planifié")
UserChallenge.create!(challenge: challenge_5, user: victor,status: "planifié")
UserChallenge.create!(challenge: challenge_6, user: victor,status: "planifié")
UserChallenge.create!(challenge: challenge_7, user: victor,status: "planifié")

p "#{UserChallenge.count} user challenge created"

# UserDesign.create!(design: vic_design, user: victor, image:, description:)
# p "#{UserDesign.count} user design created"
