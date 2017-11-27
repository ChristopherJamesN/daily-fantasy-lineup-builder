# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Quarterbacks
Player.create(name: 'Russell Wilson', position: 'Quarterback', salary: 7000, projectedPoints: 23, actualPoints: 25)
Player.create(name: 'Tom Brady', position: 'Quarterback', salary: 7700, projectedPoints: 27, actualPoints: 22)
Player.create(name: 'Marcus Mariota', position: 'Quarterback', salary: 6300, projectedPoints: 18, actualPoints: 10)
Player.create(name: 'Matt Ryan', position: 'Quarterback', salary: 6400, projectedPoints: 21, actualPoints: 15)

#Runningbacks
Player.create(name: 'Tevin Coleman', position: 'Runningback1', salary: 6500, projectedPoints: 24, actualPoints: 21)
Player.create(name: 'Mark Ingram', position: 'Runningback1', salary: 8300, projectedPoints: 21, actualPoints: 6)
Player.create(name: 'Todd Gurley', position: 'Runningback2', salary: 8800, projectedPoints: 22, actualPoints: 16)
Player.create(name: 'Kareem Hunt', position: 'Runningback2', salary: 8000, projectedPoints: 29, actualPoints: 4)

#Widerecievers
Player.create(name: 'Julio Jones', position: 'Widereciever1', salary: 7700, projectedPoints: 18, actualPoints: 52)
Player.create(name: 'Brandin Cooks', position: 'Widereciever1', salary: 7100, projectedPoints: 16, actualPoints: 21)
Player.create(name: 'Sammy Watkins', position: 'Widereciever2', salary: 4900, projectedPoints: 17, actualPoints: 18)
Player.create(name: 'AJ Green', position: 'widereciever2', salary: 8000, projectedPoints: 15, actualPoints: 9)
Player.create(name: 'Cooper Kupp', position: 'Widereciever3', salary: 5000, projectedPoints: 19, actualPoints: 22)
Player.create(name: 'Antonio Brown', position: 'Widereciever3', salary: 9500, projectedPoints: 25, actualPoints: 29)

#Flex
Player.create(name: 'LeSean McCoy', position: 'Flex', salary: 8100, projectedPoints: 17, actualPoints: 21)
Player.create(name: 'Rob Gronkowski', position: 'Flex', salary: 7800, projectedPoints: 14, actualPoints: 18)
Player.create(name: 'Randall Cobb', position: 'Flex', salary: 4200, projectedPoints: 7, actualPoints: 10)

#Tightends
Player.create(name: 'Jack Doyle', position: 'Tightend', salary: 4500, projectedPoints: 14, actualPoints: 16)
Player.create(name: 'Travis Kelce', position: 'Tightend', salary: 7300, projectedPoints: 18, actualPoints: 6)
Player.create(name: 'Delanie Walker', position: 'Tightend', salary: 5000, projectedPoints: 19, actualPoints: 16)

#Defense
Player.create(name: 'Jacksonville', position: 'Defense', salary: 4100, projectedPoints: 6, actualPoints: 2)
Player.create(name: 'Philadelphia', position: 'Defense', salary: 3600, projectedPoints: 8, actualPoints: 12)
Player.create(name: 'Cincinnati', position: 'Defense', salary: 3900, projectedPoints: 7, actualPoints: 6)
