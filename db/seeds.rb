require 'open-uri'
require 'json'

p "clean database"
Challenge.destroy_all
Theme.destroy_all
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

theme = Theme.create!(name: "c'est un test", design: vic_design)
p "#{Theme.count} theme created"

Challenge.create!(title:"Prise de décision", description:"Prendre des décisions en analysant et en prenant du temps au lieu de suivre ton intuition sur le moment", theme: theme )
Challenge.create!(title:"Observer", description:"Observer ses propres réactions lorsque les autres ne te comprenent pas, ne t'acceptent pas ou ne suivent pas ton mouvements", theme: theme )
Challenge.create!(title:"Se rendre compte de l'impact", description:"Faire une liste de spersonnes pouvant être impactées par tes actions et tes décisions", theme: theme )
p "#{Challenge.count} challenge created"
