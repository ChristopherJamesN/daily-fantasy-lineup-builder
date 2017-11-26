# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Quarterbacks
Player.create(name: 'Russell Wilson', position: 'Quarterback', salary: 7000)
Player.create(name: 'Tom Brady', position: 'Quarterback', salary: 7700)
Player.create(name: 'Marcus Mariota', position: 'Quarterback', salary: 6300)
Player.create(name: 'Matt Ryan', position: 'Quarterback', salary: 6400)

#Runningbacks
Player.create(name: 'Tevin Coleman', position: 'Runningback', salary: 6500)
Player.create(name: 'Mark Ingram', position: 'Runningback', salary: 8300)
Player.create(name: 'Todd Gurley', position: 'Runningback', salary: 8800)
Player.create(name: 'Kareem Hunt', position: 'Runningback', salary: 8000)

#Widerecievers
Player.create(name: 'Julio Jones', position: 'Widereciever', salary: 7700)
Player.create(name: 'Brandin Cooks', position: 'Widereciever', salary: 7100)
Player.create(name: 'Sammy Watkins', position: 'Widereciever', salary: 4900)
Player.create(name: 'AJ Green', position: 'Widereciever', salary: 8000)
Player.create(name: 'Cooper Kupp', position: 'Widereciever', salary: 5000)

#Tightends
Player.create(name: 'Jack Doyle', position: 'Tightend', salary: 4500)
Player.create(name: 'Travis Kelce', position: 'Tightend', salary: 7300)
Player.create(name: 'Delanie Walker', position: 'Tightend', salary: 5000)

#Defense
Player.create(name: 'Jacksonville', position: 'Defense', salary: 4100)
Player.create(name: 'Philadelphia', position: 'Defense', salary: 3600)
Player.create(name: 'Cincinnati', position: 'Defense', salary: 3900)
