# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
musician_1 = Musician.create(name:"Bruce Springsteen", email:"bruce@mail.com", phone: "8885739573", photo: "https://unsplash.com/photos/d1UPkiFd04A")
musician_2 = Musician.create(name:"Bruce Rundman", email:"bruce2@mail.com", phone: "8885739504", photo: "https://unsplash.com/photos/6GgCyNnF6Zs")
musician_3 = Musician.create(name:"Musician 3", email:"3m@mail.com", phone: "1885739573", photo: "https://unsplash.com/photos/d1UPkiFd04A")
musician_4 = Musician.create(name:"Musician 4", email:"4m@mail.com", phone: "2885739504", photo: "https://unsplash.com/photos/6GgCyNnF6Zs")
musician_5 = Musician.create(name:"Musician 5", email:"5m@mail.com", phone: "8285739573", photo: "https://unsplash.com/photos/d1UPkiFd04A")
musician_6 = Musician.create(name:"Musician 6", email:"6m@mail.com", phone: "8835739504", photo: "https://unsplash.com/photos/6GgCyNnF6Zs")
musician_7 = Musician.create(name:"Musician 7", email:"7m@mail.com", phone: "1585739573", photo: "https://unsplash.com/photos/d1UPkiFd04A")
musician_8 = Musician.create(name:"Musician 8", email:"8m@mail.com", phone: "2875739504", photo: "https://unsplash.com/photos/6GgCyNnF6Zs")

host_1 = Host.create!(name: 'Chris H', email: 'chris@fake.com', phone: '5595555617')
host_2 = Host.create!(name: 'Jon H', email: 'john@fake.com', phone: '5495555617')
host_3 = Host.create!(name: 'James H', email: 'James@fake.com', phone: '5535555617')
host_4 = Host.create!(name: 'Jim H', email: 'Jim@fake.com', phone: '5595575617')
host_5 = Host.create!(name: 'Adam H', email: 'Adam@fake.com', phone: '5595555317')
host_6 = Host.create!(name: 'Ryan H', email: 'Ryan@fake.com', phone: '5591555617')
host_6 = Host.create!(name: 'Mark H', email: 'Mark@fake.com', phone: '5295555617')

room_1 = Room.create!(id: 1,
                name: 'Studio 1',
                details: 'Cat ipsum dolor sit amet, cat fur is the new black cat is love, cat is life leave hair on owner's clothes munch on tasty moths. Leave hair everywhere jump five feet high and sideways when a shadow moves or furball roll roll roll scratch the box, poop in the plant pot. Howl on top of tall thing. Poop in a handbag look delicious and drink the soapy mopping up water then puke giant foamy fur-balls jump launch to pounce upon little yarn mouse, bare fangs at toy run hide in litter box until treats are fed so lick sellotape but cats go for world domination destroy the blinds. Attack feet groom forever, stretch tongue and leave it slightly out, blep but i shall purr myself to sleep so love fish. Cat milk copy park pee walk owner escape bored tired cage droppings sick vet vomit making sure that fluff gets into the owner's eyes playing with balls of wool and brown cats with pink ears. Chew foot pet my belly, you know you want to; seize the hand and shred it! and push your water glass on the floor for taco cat backwards spells taco cat. Hit you unexpectedly furrier and even more furrier hairball yet leave dead animals as gifts, and cat mojo i love cuddles. Love to play with owner's hair tie i shredded your linens for you. Be superior curl up and sleep on the freshly laundered towels so chase ball of string meow to be let out for hunt by meowing loudly at 5am next to human slave food dispenser. Pretend you want to go out but then don't eat a plant, kill a hand purr, so behind the couch, so attack dog, run away and pretend to be victim. Chase the pig around the house slap owner's face at 5am until human fills food dish so oooo! dangly balls! jump swat swing flies so sweetly to the floor crash move on wash belly nap for catch small lizards, bring them into house, then unable to find them on carpet, so ignore the squirrels, you'll never catch them anyway climb into cupboard and lick the salt off rice cakes but roll over and sun my belly. Proudly present butt to human hiss and stare at nothing then run suddenly away need to chase tail fooled again thinking the dog likes me and need to chase tail, and groom yourself 4 hours - checked, have your beauty sleep 18 hours - checked, be fabulous for the rest of the day - checked, cat meoooow i iz master of hoomaan, not hoomaan master of i, oooh damn dat dog.',
                photo: 'https://images.unsplash.com/photo-1564078516393-cf04bd966897',
                address: '1 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 158.39645833315387,
                amenities: coffee maker, bathrooms,
                instruments: 
                capacity: 7,
                host_id: "#{host_4.id}")

room_2 = Room.create!(id: 2,
                name: 'Warehouse 2',
                details: 'Pelt around the house and up and down stairs chasing phantoms. Lounge in doorway waffles plop down in the middle where everybody walks for human is behind a closed door, emergency! abandoned! meeooowwww!!! catty ipsum, and why must they do that pounce on unsuspecting person. Just going to dip my paw in your coffee and do a taste test - oh never mind i forgot i don't like coffee - you can have that back now if it fits i sits but eat my own ears. Sniff sniff stare out cat door then go back inside yet chew master's slippers but groom yourself 4 hours - checked, have your beauty sleep 18 hours - checked, be fabulous for the rest of the day - checked, for pelt around the house and up and down stairs chasing phantoms. Claw at curtains stretch and yawn nibble on tuna ignore human bite human hand steal mom's crouton while she is in the bathroom and human give me attention meow take a big fluffing crap ðŸ’© yet jump five feet high and sideways when a shadow moves ignore the squirrels, you'll never catch them anyway. Loves cheeseburgers walk on keyboard stretch. Human give me attention meow. Get scared by doggo also cucumerro .',
                photo: 'https://images.unsplash.com/photo-1623771859039-e435068f39d7',
                address: '2 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 15.870960695801628,
                amenities: ,
                instruments: gangsa, trumpet
                capacity: 6,
                host_id: "#{host_7.id}")

room_3 = Room.create!(id: 3,
                name: 'Amphitheater 3',
                details: 'If it fits, i sits scamper. Meowing chowing and wowing sleep in the bathroom sink love fish, shake treat bag, so meow loudly just to annoy owners for licks paws, i can haz. Cat dog hate mouse eat string barf pillow no baths hate everything i vomit in the bed in the middle of the night so try to hold own back foot to clean it but foot reflexively kicks you in face, go into a rage and bite own foot, hard annoy the old grumpy cat, start a fight and then retreat to wash when i lose for fight an alligator and win, but put butt in owner's face for lie on your belly and purr when you are asleep. Ccccccccccccaaaaaaaaaaaaaaatttttttttttttttttssssssssssssssss. Cat sit like bread human give me attention meow thinking about you i'm joking it's food always food why can't i catch that stupid red dot, stretch out on bed yet steal raw zucchini off kitchen counter check cat door for ambush 10 times before coming in. Cats making all the muffins roll on the floor purring your whiskers off yet lick butt run in circles, or jump up to edge of bath, fall in then scramble in a mad panic to get out for if it fits, i sits and hey! you there, with the hands. Run off table persian cat jump eat fish. Get scared by doggo also cucumerro chew master's slippers and chase mice, and chase dog then run away pet right here, no not there, here, no fool, right here that other cat smells funny you should really give me all the treats because i smell the best and omg you finally got the right spot and i love you right now. Destroy couch morning beauty routine of licking self yet massacre a bird in the living room and then look like the cutest and most innocent animal on the planet so behind the couch terrorize the hundred-and-twenty-pound rottweiler and steal his bed, not sorry but instantly break out into full speed gallop across the house for no reason. Is good you understand your place in my world chase little red dot someday it will be mine! trip owner up in kitchen i want food let me in let me out let me in let me out let me in let me out who broke this door anyway stare at wall turn and meow stare at wall some more meow again continue staring . Have secret plans i show my fluffy belly but it's a trap! if you pet it i will tear up your hand or hiss at vacuum cleaner. Stare at ceiling light where is my slave? I'm getting hungry or nya nya nyan and fight an alligator and win. Rub face on everything cats are a queer kind of folk lick human with sandpaper tongue, but attack curtains. Jump five feet high and sideways when a shadow moves favor packaging over toy. Destroy couch as revenge. Love blinks and purr purr purr purr yawn leave fur on owners clothes and cats are cute but growl at dogs in my sleep i will be pet i will be pet and then i will hiss but jump on human and sleep on her all night long be long in the bed, purr in the morning and then give a bite to every human around for not waking up request food, purr loud scratch the walls, the floor, the windows, the humans chase mice. It's 3am, time to create some chaos . I'm bored inside, let me out i'm lonely outside, let me in i can't make up my mind whether to go in or out, guess i'll just stand partway in and partway out, contemplating the universe for half an hour how dare you nudge me with your foot?!?! leap into the air in greatest offense! crusty butthole. Claws in the eye of the beholder. When in doubt, wash. Cat gets stuck in tree firefighters try to get cat down firefighters get stuck in tree cat eats firefighters' slippers waffles so claw at curtains stretch and yawn nibble on tuna ignore human bite human hand but i like cats because they are fat and fluffy or ccccccccccccaaaaaaaaaaaaaaatttttttttttttttttssssssssssssssss. Play time put butt in owner's face ooooh feather moving feather! skid on floor, crash into wall .',
                photo: 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7',
                address: '3 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 45.355789438639995,
                amenities: drinking water, wifi, bathrooms,
                instruments: bagpipes
                capacity: 2,
                host_id: "#{host_7.id}")

room_4 = Room.create!(id: 4,
                name: 'Stage 4',
                details: 'Always ensure to lay down in such a manner that tail can lightly brush human's nose spit up on light gray carpet instead of adjacent linoleum for cat not kitten around for cats are a queer kind of folk or sit as close as possible to warm fire without sitting on cold floor for chase mice. Snob you for another person. Leave dead animals as gifts lick yarn hanging out of own butt mewl for food at 4am yet sleep everywhere, but not in my bed but curl into a furry donut. Run off table persian cat jump eat fish warm up laptop with butt lick butt fart rainbows until owner yells pee in litter box hiss at cats but crusty butthole. A nice warm laptop for me to sit on purrr purr littel cat, little cat purr purr. Meow meow, i tell my human meow meow, i tell my human throwup on your pillow gimme attention gimme attention gimme attention gimme attention gimme attention gimme attention just kidding i don't want it anymore meow bye but sleeping in the box and man running from cops stops to pet cats, goes to jail. Walk on keyboard. I do no work yet get food, shelter, and lots of stuff just like man who lives with us when in doubt, wash.',
                photo: 'https://images.unsplash.com/photo-1473893604213-3df9c15611c0',
                address: '4 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 181.74474879949014,
                amenities: wifi, coffee maker, bathrooms,
                instruments: 
                capacity: 5,
                host_id: "#{host_1.id}")

room_5 = Room.create!(id: 5,
                name: 'Auditorium 5',
                details: 'Always ensure to lay down in such a manner that tail can lightly brush human's nose spit up on light gray carpet instead of adjacent linoleum for cat not kitten around for cats are a queer kind of folk or sit as close as possible to warm fire without sitting on cold floor for chase mice. Snob you for another person. Leave dead animals as gifts lick yarn hanging out of own butt mewl for food at 4am yet sleep everywhere, but not in my bed but curl into a furry donut. Run off table persian cat jump eat fish warm up laptop with butt lick butt fart rainbows until owner yells pee in litter box hiss at cats but crusty butthole. A nice warm laptop for me to sit on purrr purr littel cat, little cat purr purr. Meow meow, i tell my human meow meow, i tell my human throwup on your pillow gimme attention gimme attention gimme attention gimme attention gimme attention gimme attention just kidding i don't want it anymore meow bye but sleeping in the box and man running from cops stops to pet cats, goes to jail. Walk on keyboard. I do no work yet get food, shelter, and lots of stuff just like man who lives with us when in doubt, wash.',
                photo: 'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af',
                address: '5 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 96.45293246819492,
                amenities: wifi, drinking water,
                instruments: gangsa, bagpipes
                capacity: 1,
                host_id: "#{host_1.id}")

room_6 = Room.create!(id: 6,
                name: 'Living Room 6',
                details: 'Cat ipsum dolor sit amet, cat fur is the new black cat is love, cat is life leave hair on owner's clothes munch on tasty moths. Leave hair everywhere jump five feet high and sideways when a shadow moves or furball roll roll roll scratch the box, poop in the plant pot. Howl on top of tall thing. Poop in a handbag look delicious and drink the soapy mopping up water then puke giant foamy fur-balls jump launch to pounce upon little yarn mouse, bare fangs at toy run hide in litter box until treats are fed so lick sellotape but cats go for world domination destroy the blinds. Attack feet groom forever, stretch tongue and leave it slightly out, blep but i shall purr myself to sleep so love fish. Cat milk copy park pee walk owner escape bored tired cage droppings sick vet vomit making sure that fluff gets into the owner's eyes playing with balls of wool and brown cats with pink ears. Chew foot pet my belly, you know you want to; seize the hand and shred it! and push your water glass on the floor for taco cat backwards spells taco cat. Hit you unexpectedly furrier and even more furrier hairball yet leave dead animals as gifts, and cat mojo i love cuddles. Love to play with owner's hair tie i shredded your linens for you. Be superior curl up and sleep on the freshly laundered towels so chase ball of string meow to be let out for hunt by meowing loudly at 5am next to human slave food dispenser. Pretend you want to go out but then don't eat a plant, kill a hand purr, so behind the couch, so attack dog, run away and pretend to be victim. Chase the pig around the house slap owner's face at 5am until human fills food dish so oooo! dangly balls! jump swat swing flies so sweetly to the floor crash move on wash belly nap for catch small lizards, bring them into house, then unable to find them on carpet, so ignore the squirrels, you'll never catch them anyway climb into cupboard and lick the salt off rice cakes but roll over and sun my belly. Proudly present butt to human hiss and stare at nothing then run suddenly away need to chase tail fooled again thinking the dog likes me and need to chase tail, and groom yourself 4 hours - checked, have your beauty sleep 18 hours - checked, be fabulous for the rest of the day - checked, cat meoooow i iz master of hoomaan, not hoomaan master of i, oooh damn dat dog.',
                photo: 'https://images.unsplash.com/photo-1481277542470-605612bd2d61',
                address: '6 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 41.38822416196001,
                amenities: drinking water, wifi, coffee maker,
                instruments: 
                capacity: 3,
                host_id: "#{host_1.id}")

room_7 = Room.create!(id: 7,
                name: 'Study 7',
                details: 'Always ensure to lay down in such a manner that tail can lightly brush human's nose spit up on light gray carpet instead of adjacent linoleum for cat not kitten around for cats are a queer kind of folk or sit as close as possible to warm fire without sitting on cold floor for chase mice. Snob you for another person. Leave dead animals as gifts lick yarn hanging out of own butt mewl for food at 4am yet sleep everywhere, but not in my bed but curl into a furry donut. Run off table persian cat jump eat fish warm up laptop with butt lick butt fart rainbows until owner yells pee in litter box hiss at cats but crusty butthole. A nice warm laptop for me to sit on purrr purr littel cat, little cat purr purr. Meow meow, i tell my human meow meow, i tell my human throwup on your pillow gimme attention gimme attention gimme attention gimme attention gimme attention gimme attention just kidding i don't want it anymore meow bye but sleeping in the box and man running from cops stops to pet cats, goes to jail. Walk on keyboard. I do no work yet get food, shelter, and lots of stuff just like man who lives with us when in doubt, wash.',
                photo: 'https://images.unsplash.com/photo-1513694203232-719a280e022f',
                address: '7 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 101.22434288168981,
                amenities: bathrooms, coffee maker, drinking water,
                instruments: gangsa
                capacity: 1,
                host_id: "#{host_4.id}")

room_8 = Room.create!(id: 8,
                name: 'Study 8',
                details: 'Always ensure to lay down in such a manner that tail can lightly brush human's nose spit up on light gray carpet instead of adjacent linoleum for cat not kitten around for cats are a queer kind of folk or sit as close as possible to warm fire without sitting on cold floor for chase mice. Snob you for another person. Leave dead animals as gifts lick yarn hanging out of own butt mewl for food at 4am yet sleep everywhere, but not in my bed but curl into a furry donut. Run off table persian cat jump eat fish warm up laptop with butt lick butt fart rainbows until owner yells pee in litter box hiss at cats but crusty butthole. A nice warm laptop for me to sit on purrr purr littel cat, little cat purr purr. Meow meow, i tell my human meow meow, i tell my human throwup on your pillow gimme attention gimme attention gimme attention gimme attention gimme attention gimme attention just kidding i don't want it anymore meow bye but sleeping in the box and man running from cops stops to pet cats, goes to jail. Walk on keyboard. I do no work yet get food, shelter, and lots of stuff just like man who lives with us when in doubt, wash.',
                photo: 'https://images.unsplash.com/photo-1564078516393-cf04bd966897',
                address: '8 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 40.19552746995266,
                amenities: bathrooms,
                instruments: bagpipes, drums, gangsa
                capacity: 7,
                host_id: "#{host_5.id}")

room_9 = Room.create!(id: 9,
                name: 'Stage 9',
                details: 'Always ensure to lay down in such a manner that tail can lightly brush human's nose spit up on light gray carpet instead of adjacent linoleum for cat not kitten around for cats are a queer kind of folk or sit as close as possible to warm fire without sitting on cold floor for chase mice. Snob you for another person. Leave dead animals as gifts lick yarn hanging out of own butt mewl for food at 4am yet sleep everywhere, but not in my bed but curl into a furry donut. Run off table persian cat jump eat fish warm up laptop with butt lick butt fart rainbows until owner yells pee in litter box hiss at cats but crusty butthole. A nice warm laptop for me to sit on purrr purr littel cat, little cat purr purr. Meow meow, i tell my human meow meow, i tell my human throwup on your pillow gimme attention gimme attention gimme attention gimme attention gimme attention gimme attention just kidding i don't want it anymore meow bye but sleeping in the box and man running from cops stops to pet cats, goes to jail. Walk on keyboard. I do no work yet get food, shelter, and lots of stuff just like man who lives with us when in doubt, wash.',
                photo: 'https://images.unsplash.com/photo-1589834390005-5d4fb9bf3d32',
                address: '9 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 18.549890388199145,
                amenities: bathrooms, wifi, coffee maker,
                instruments: trumpet, guitar, drums
                capacity: 4,
                host_id: "#{host_1.id}")

room_10 = Room.create!(id: 10,
                name: 'Warehouse 10',
                details: 'If it fits, i sits scamper. Meowing chowing and wowing sleep in the bathroom sink love fish, shake treat bag, so meow loudly just to annoy owners for licks paws, i can haz. Cat dog hate mouse eat string barf pillow no baths hate everything i vomit in the bed in the middle of the night so try to hold own back foot to clean it but foot reflexively kicks you in face, go into a rage and bite own foot, hard annoy the old grumpy cat, start a fight and then retreat to wash when i lose for fight an alligator and win, but put butt in owner's face for lie on your belly and purr when you are asleep. Ccccccccccccaaaaaaaaaaaaaaatttttttttttttttttssssssssssssssss. Cat sit like bread human give me attention meow thinking about you i'm joking it's food always food why can't i catch that stupid red dot, stretch out on bed yet steal raw zucchini off kitchen counter check cat door for ambush 10 times before coming in. Cats making all the muffins roll on the floor purring your whiskers off yet lick butt run in circles, or jump up to edge of bath, fall in then scramble in a mad panic to get out for if it fits, i sits and hey! you there, with the hands. Run off table persian cat jump eat fish. Get scared by doggo also cucumerro chew master's slippers and chase mice, and chase dog then run away pet right here, no not there, here, no fool, right here that other cat smells funny you should really give me all the treats because i smell the best and omg you finally got the right spot and i love you right now. Destroy couch morning beauty routine of licking self yet massacre a bird in the living room and then look like the cutest and most innocent animal on the planet so behind the couch terrorize the hundred-and-twenty-pound rottweiler and steal his bed, not sorry but instantly break out into full speed gallop across the house for no reason. Is good you understand your place in my world chase little red dot someday it will be mine! trip owner up in kitchen i want food let me in let me out let me in let me out let me in let me out who broke this door anyway stare at wall turn and meow stare at wall some more meow again continue staring . Have secret plans i show my fluffy belly but it's a trap! if you pet it i will tear up your hand or hiss at vacuum cleaner. Stare at ceiling light where is my slave? I'm getting hungry or nya nya nyan and fight an alligator and win. Rub face on everything cats are a queer kind of folk lick human with sandpaper tongue, but attack curtains. Jump five feet high and sideways when a shadow moves favor packaging over toy. Destroy couch as revenge. Love blinks and purr purr purr purr yawn leave fur on owners clothes and cats are cute but growl at dogs in my sleep i will be pet i will be pet and then i will hiss but jump on human and sleep on her all night long be long in the bed, purr in the morning and then give a bite to every human around for not waking up request food, purr loud scratch the walls, the floor, the windows, the humans chase mice. It's 3am, time to create some chaos . I'm bored inside, let me out i'm lonely outside, let me in i can't make up my mind whether to go in or out, guess i'll just stand partway in and partway out, contemplating the universe for half an hour how dare you nudge me with your foot?!?! leap into the air in greatest offense! crusty butthole. Claws in the eye of the beholder. When in doubt, wash. Cat gets stuck in tree firefighters try to get cat down firefighters get stuck in tree cat eats firefighters' slippers waffles so claw at curtains stretch and yawn nibble on tuna ignore human bite human hand but i like cats because they are fat and fluffy or ccccccccccccaaaaaaaaaaaaaaatttttttttttttttttssssssssssssssss. Play time put butt in owner's face ooooh feather moving feather! skid on floor, crash into wall .',
                photo: 'https://images.unsplash.com/photo-1564078516393-cf04bd966897',
                address: '10 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 79.95936488845342,
                amenities: drinking water, bathrooms, coffee maker,
                instruments: drums
                capacity: 3,
                host_id: "#{host_2.id}")

room_11 = Room.create!(id: 11,
                name: 'Living Room 11',
                details: 'Pelt around the house and up and down stairs chasing phantoms. Lounge in doorway waffles plop down in the middle where everybody walks for human is behind a closed door, emergency! abandoned! meeooowwww!!! catty ipsum, and why must they do that pounce on unsuspecting person. Just going to dip my paw in your coffee and do a taste test - oh never mind i forgot i don't like coffee - you can have that back now if it fits i sits but eat my own ears. Sniff sniff stare out cat door then go back inside yet chew master's slippers but groom yourself 4 hours - checked, have your beauty sleep 18 hours - checked, be fabulous for the rest of the day - checked, for pelt around the house and up and down stairs chasing phantoms. Claw at curtains stretch and yawn nibble on tuna ignore human bite human hand steal mom's crouton while she is in the bathroom and human give me attention meow take a big fluffing crap ðŸ’© yet jump five feet high and sideways when a shadow moves ignore the squirrels, you'll never catch them anyway. Loves cheeseburgers walk on keyboard stretch. Human give me attention meow. Get scared by doggo also cucumerro .',
                photo: 'https://images.unsplash.com/photo-1481277542470-605612bd2d61',
                address: '11 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 78.05622272821455,
                amenities: bathrooms, wifi, drinking water,
                instruments: guitar, trumpet, drums
                capacity: 6,
                host_id: "#{host_1.id}")

room_12 = Room.create!(id: 12,
                name: 'Auditorium 12',
                details: 'Pelt around the house and up and down stairs chasing phantoms. Lounge in doorway waffles plop down in the middle where everybody walks for human is behind a closed door, emergency! abandoned! meeooowwww!!! catty ipsum, and why must they do that pounce on unsuspecting person. Just going to dip my paw in your coffee and do a taste test - oh never mind i forgot i don't like coffee - you can have that back now if it fits i sits but eat my own ears. Sniff sniff stare out cat door then go back inside yet chew master's slippers but groom yourself 4 hours - checked, have your beauty sleep 18 hours - checked, be fabulous for the rest of the day - checked, for pelt around the house and up and down stairs chasing phantoms. Claw at curtains stretch and yawn nibble on tuna ignore human bite human hand steal mom's crouton while she is in the bathroom and human give me attention meow take a big fluffing crap ðŸ’© yet jump five feet high and sideways when a shadow moves ignore the squirrels, you'll never catch them anyway. Loves cheeseburgers walk on keyboard stretch. Human give me attention meow. Get scared by doggo also cucumerro .',
                photo: 'https://images.unsplash.com/photo-1481277542470-605612bd2d61',
                address: '12 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 199.2791290576419,
                amenities: wifi,
                instruments: gangsa, guitar, bagpipes
                capacity: 6,
                host_id: "#{host_3.id}")

room_13 = Room.create!(id: 13,
                name: 'Study 13',
                details: 'Bite off human's toes eat from dog's food but love me! find box a little too small and curl up with fur hanging out meow meow pee in shoe or be superior, and walk on car leaving trail of paw prints on hood and windshield. Put toy mouse in food bowl run out of litter box at full speed yowling nonstop the whole night so gnaw the corn cob. Haha you hold me hooman i scratch play with twist ties, you call this cat food love to play with owner's hair tie catching very fast laser pointer. And sometimes switches in french and say "miaou" just because well why not murf pratt ungow ungow or meow but snob you for another person for do not try to mix old food with new one to fool me!. Open the door, let me out, let me out, let me-out, let me-aow, let meaow, meaow! man running from cops stops to pet cats, goes to jail to pet a cat, rub its belly, endure blood and agony, quietly weep, keep rubbing belly catch eat throw up catch eat throw up bad birds or get video posted to internet for chasing red dot.',
                photo: 'https://images.unsplash.com/photo-1576487236230-eaa4afe9b453',
                address: '13 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 38.01377582302588,
                amenities: coffee maker, drinking water,
                instruments: trumpet
                capacity: 4,
                host_id: "#{host_2.id}")

room_14 = Room.create!(id: 14,
                name: 'Living Room 14',
                details: 'Human is in bath tub, emergency! drowning! meooowww! ask to go outside and ask to come inside and ask to go outside and ask to come inside massacre a bird in the living room and then look like the cutest and most innocent animal on the planet kitty run to human with blood on mouth from frenzied attack on poor innocent mouse, don't i look cute? sun bathe, or hunt anything. Claw your carpet in places everyone can see - why hide my amazing artistic clawing skills? eat prawns daintily with a claw then lick paws clean wash down prawns with a lap of carnation milk then retire to the warmest spot on the couch to claw at the fabric before taking a catnap so thinking longingly about tuna brine slap owner's face at 5am until human fills food dish look at dog hiiiiiisssss. The cat was chasing the mouse making bread on the bathrobe, for open the door, let me out, let me out, let me-out, let me-aow, let meaow, meaow! loves cheeseburgers and why use post when this sofa is here. Catto munch salmono. Cat walks in keyboard friends are not food the best thing in the universe is a cardboard box and mess up all the toilet paper. Trip on catnip enslave the hooman for sees bird in air, breaks into cage and attacks creature or purr as loud as possible, be the most annoying cat that you can, and, knock everything off the table, yet climb leg knock over christmas tree. Mmmmmmmmmeeeeeeeeooooooooowwwwwwww open the door, let me out, let me out, let me-out, let me-aow, let meaow, meaow!, kitty time for sniff catnip and act crazy curl up and sleep on the freshly laundered towels meow meow, i tell my human yet kitty poochy. Meow bring your owner a dead bird, and adventure always so if it fits, i sits is good you understand your place in my world bleghbleghvomit my furball really tie the room together. Meow meow you are my owner so here is a dead rat sleep in the bathroom sink plop down in the middle where everybody walks. The fat cat sat on the mat bat away with paws shove bum in owner's face like camera lens or woops poop hanging from butt must get rid run run around house drag poop on floor maybe it comes off woops left brown marks on floor human slave clean lick butt now meow. Commence midnight zoomies scratch at the door then walk away if it fits, i sits so rub butt on table for kitty power soft kitty warm kitty little ball of furr. Instantly break out into full speed gallop across the house for no reason dont wait for the storm to pass, dance in the rain or cat jumps and falls onto the couch purrs and wakes up in a new dimension filled with kitty litter meow meow yummy there is a bunch of cats hanging around eating catnip sitting in a box for a nice warm laptop for me to sit on. Pushed the mug off the table cats making all the muffins chase red laser dot swat turds around the house catto munch salmono purr purr purr until owner pets why owner not pet me hiss scratch meow. Swat at dog groom forever, stretch tongue and leave it slightly out, blep.
',
                photo: 'https://images.unsplash.com/photo-1564078516393-cf04bd966897',
                address: '14 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 183.40543843936402,
                amenities: wifi, drinking water, coffee maker,
                instruments: 
                capacity: 4,
                host_id: "#{host_1.id}")

room_15 = Room.create!(id: 15,
                name: 'Living Room 15',
                details: 'Bite off human's toes eat from dog's food but love me! find box a little too small and curl up with fur hanging out meow meow pee in shoe or be superior, and walk on car leaving trail of paw prints on hood and windshield. Put toy mouse in food bowl run out of litter box at full speed yowling nonstop the whole night so gnaw the corn cob. Haha you hold me hooman i scratch play with twist ties, you call this cat food love to play with owner's hair tie catching very fast laser pointer. And sometimes switches in french and say "miaou" just because well why not murf pratt ungow ungow or meow but snob you for another person for do not try to mix old food with new one to fool me!. Open the door, let me out, let me out, let me-out, let me-aow, let meaow, meaow! man running from cops stops to pet cats, goes to jail to pet a cat, rub its belly, endure blood and agony, quietly weep, keep rubbing belly catch eat throw up catch eat throw up bad birds or get video posted to internet for chasing red dot.',
                photo: 'https://images.unsplash.com/photo-1564078516393-cf04bd966897',
                address: '15 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 81.16548553835595,
                amenities: drinking water, bathrooms, coffee maker,
                instruments: drums, guitar, bagpipes
                capacity: 2,
                host_id: "#{host_5.id}")

room_16 = Room.create!(id: 16,
                name: 'Living Room 16',
                details: 'Always ensure to lay down in such a manner that tail can lightly brush human's nose spit up on light gray carpet instead of adjacent linoleum for cat not kitten around for cats are a queer kind of folk or sit as close as possible to warm fire without sitting on cold floor for chase mice. Snob you for another person. Leave dead animals as gifts lick yarn hanging out of own butt mewl for food at 4am yet sleep everywhere, but not in my bed but curl into a furry donut. Run off table persian cat jump eat fish warm up laptop with butt lick butt fart rainbows until owner yells pee in litter box hiss at cats but crusty butthole. A nice warm laptop for me to sit on purrr purr littel cat, little cat purr purr. Meow meow, i tell my human meow meow, i tell my human throwup on your pillow gimme attention gimme attention gimme attention gimme attention gimme attention gimme attention just kidding i don't want it anymore meow bye but sleeping in the box and man running from cops stops to pet cats, goes to jail. Walk on keyboard. I do no work yet get food, shelter, and lots of stuff just like man who lives with us when in doubt, wash.',
                photo: 'https://images.unsplash.com/photo-1513694203232-719a280e022f',
                address: '16 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 189.88060142986723,
                amenities: wifi, drinking water,
                instruments: gangsa, trumpet, bagpipes
                capacity: 2,
                host_id: "#{host_6.id}")

room_17 = Room.create!(id: 17,
                name: 'Studio 17',
                details: 'Human is in bath tub, emergency! drowning! meooowww! ask to go outside and ask to come inside and ask to go outside and ask to come inside massacre a bird in the living room and then look like the cutest and most innocent animal on the planet kitty run to human with blood on mouth from frenzied attack on poor innocent mouse, don't i look cute? sun bathe, or hunt anything. Claw your carpet in places everyone can see - why hide my amazing artistic clawing skills? eat prawns daintily with a claw then lick paws clean wash down prawns with a lap of carnation milk then retire to the warmest spot on the couch to claw at the fabric before taking a catnap so thinking longingly about tuna brine slap owner's face at 5am until human fills food dish look at dog hiiiiiisssss. The cat was chasing the mouse making bread on the bathrobe, for open the door, let me out, let me out, let me-out, let me-aow, let meaow, meaow! loves cheeseburgers and why use post when this sofa is here. Catto munch salmono. Cat walks in keyboard friends are not food the best thing in the universe is a cardboard box and mess up all the toilet paper. Trip on catnip enslave the hooman for sees bird in air, breaks into cage and attacks creature or purr as loud as possible, be the most annoying cat that you can, and, knock everything off the table, yet climb leg knock over christmas tree. Mmmmmmmmmeeeeeeeeooooooooowwwwwwww open the door, let me out, let me out, let me-out, let me-aow, let meaow, meaow!, kitty time for sniff catnip and act crazy curl up and sleep on the freshly laundered towels meow meow, i tell my human yet kitty poochy. Meow bring your owner a dead bird, and adventure always so if it fits, i sits is good you understand your place in my world bleghbleghvomit my furball really tie the room together. Meow meow you are my owner so here is a dead rat sleep in the bathroom sink plop down in the middle where everybody walks. The fat cat sat on the mat bat away with paws shove bum in owner's face like camera lens or woops poop hanging from butt must get rid run run around house drag poop on floor maybe it comes off woops left brown marks on floor human slave clean lick butt now meow. Commence midnight zoomies scratch at the door then walk away if it fits, i sits so rub butt on table for kitty power soft kitty warm kitty little ball of furr. Instantly break out into full speed gallop across the house for no reason dont wait for the storm to pass, dance in the rain or cat jumps and falls onto the couch purrs and wakes up in a new dimension filled with kitty litter meow meow yummy there is a bunch of cats hanging around eating catnip sitting in a box for a nice warm laptop for me to sit on. Pushed the mug off the table cats making all the muffins chase red laser dot swat turds around the house catto munch salmono purr purr purr until owner pets why owner not pet me hiss scratch meow. Swat at dog groom forever, stretch tongue and leave it slightly out, blep.
',
                photo: 'https://images.unsplash.com/photo-1473893604213-3df9c15611c0',
                address: '17 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 25.376068273577545,
                amenities: ,
                instruments: guitar, keys, bagpipes
                capacity: 4,
                host_id: "#{host_3.id}")

room_18 = Room.create!(id: 18,
                name: 'Amphitheater 18',
                details: 'Human is in bath tub, emergency! drowning! meooowww! ask to go outside and ask to come inside and ask to go outside and ask to come inside massacre a bird in the living room and then look like the cutest and most innocent animal on the planet kitty run to human with blood on mouth from frenzied attack on poor innocent mouse, don't i look cute? sun bathe, or hunt anything. Claw your carpet in places everyone can see - why hide my amazing artistic clawing skills? eat prawns daintily with a claw then lick paws clean wash down prawns with a lap of carnation milk then retire to the warmest spot on the couch to claw at the fabric before taking a catnap so thinking longingly about tuna brine slap owner's face at 5am until human fills food dish look at dog hiiiiiisssss. The cat was chasing the mouse making bread on the bathrobe, for open the door, let me out, let me out, let me-out, let me-aow, let meaow, meaow! loves cheeseburgers and why use post when this sofa is here. Catto munch salmono. Cat walks in keyboard friends are not food the best thing in the universe is a cardboard box and mess up all the toilet paper. Trip on catnip enslave the hooman for sees bird in air, breaks into cage and attacks creature or purr as loud as possible, be the most annoying cat that you can, and, knock everything off the table, yet climb leg knock over christmas tree. Mmmmmmmmmeeeeeeeeooooooooowwwwwwww open the door, let me out, let me out, let me-out, let me-aow, let meaow, meaow!, kitty time for sniff catnip and act crazy curl up and sleep on the freshly laundered towels meow meow, i tell my human yet kitty poochy. Meow bring your owner a dead bird, and adventure always so if it fits, i sits is good you understand your place in my world bleghbleghvomit my furball really tie the room together. Meow meow you are my owner so here is a dead rat sleep in the bathroom sink plop down in the middle where everybody walks. The fat cat sat on the mat bat away with paws shove bum in owner's face like camera lens or woops poop hanging from butt must get rid run run around house drag poop on floor maybe it comes off woops left brown marks on floor human slave clean lick butt now meow. Commence midnight zoomies scratch at the door then walk away if it fits, i sits so rub butt on table for kitty power soft kitty warm kitty little ball of furr. Instantly break out into full speed gallop across the house for no reason dont wait for the storm to pass, dance in the rain or cat jumps and falls onto the couch purrs and wakes up in a new dimension filled with kitty litter meow meow yummy there is a bunch of cats hanging around eating catnip sitting in a box for a nice warm laptop for me to sit on. Pushed the mug off the table cats making all the muffins chase red laser dot swat turds around the house catto munch salmono purr purr purr until owner pets why owner not pet me hiss scratch meow. Swat at dog groom forever, stretch tongue and leave it slightly out, blep.
',
                photo: 'https://images.unsplash.com/photo-1513694203232-719a280e022f',
                address: '18 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 199.61564670808778,
                amenities: drinking water, wifi, coffee maker,
                instruments: trumpet, keys
                capacity: 2,
                host_id: "#{host_4.id}")

room_19 = Room.create!(id: 19,
                name: 'Auditorium 19',
                details: 'Pelt around the house and up and down stairs chasing phantoms. Lounge in doorway waffles plop down in the middle where everybody walks for human is behind a closed door, emergency! abandoned! meeooowwww!!! catty ipsum, and why must they do that pounce on unsuspecting person. Just going to dip my paw in your coffee and do a taste test - oh never mind i forgot i don't like coffee - you can have that back now if it fits i sits but eat my own ears. Sniff sniff stare out cat door then go back inside yet chew master's slippers but groom yourself 4 hours - checked, have your beauty sleep 18 hours - checked, be fabulous for the rest of the day - checked, for pelt around the house and up and down stairs chasing phantoms. Claw at curtains stretch and yawn nibble on tuna ignore human bite human hand steal mom's crouton while she is in the bathroom and human give me attention meow take a big fluffing crap ðŸ’© yet jump five feet high and sideways when a shadow moves ignore the squirrels, you'll never catch them anyway. Loves cheeseburgers walk on keyboard stretch. Human give me attention meow. Get scared by doggo also cucumerro .',
                photo: 'https://images.unsplash.com/photo-1623771859039-e435068f39d7',
                address: '19 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 186.7407100224929,
                amenities: ,
                instruments: 
                capacity: 6,
                host_id: "#{host_1.id}")

room_20 = Room.create!(id: 20,
                name: 'Studio 20',
                details: 'Always ensure to lay down in such a manner that tail can lightly brush human's nose spit up on light gray carpet instead of adjacent linoleum for cat not kitten around for cats are a queer kind of folk or sit as close as possible to warm fire without sitting on cold floor for chase mice. Snob you for another person. Leave dead animals as gifts lick yarn hanging out of own butt mewl for food at 4am yet sleep everywhere, but not in my bed but curl into a furry donut. Run off table persian cat jump eat fish warm up laptop with butt lick butt fart rainbows until owner yells pee in litter box hiss at cats but crusty butthole. A nice warm laptop for me to sit on purrr purr littel cat, little cat purr purr. Meow meow, i tell my human meow meow, i tell my human throwup on your pillow gimme attention gimme attention gimme attention gimme attention gimme attention gimme attention just kidding i don't want it anymore meow bye but sleeping in the box and man running from cops stops to pet cats, goes to jail. Walk on keyboard. I do no work yet get food, shelter, and lots of stuff just like man who lives with us when in doubt, wash.',
                photo: 'https://images.unsplash.com/photo-1522771739844-6a9f6d5f14af',
                address: '20 Not a Street',
                city: 'Denver',
                state: 'CO',
                zip: '80211',
                price: 158.08700848490642,
                amenities: drinking water,
                instruments: bagpipes, trumpet
                capacity: 4,
                host_id: "#{host_6.id}")

musician_1.bookings.create!(musician_id: musician_1.id, date: 'April 29, 2022', room_id: room_1.id)
musician_1.bookings.create!(musician_id: musician_1.id, date: 'April 30, 2022', room_id: room_1.id)
musician_2.bookings.create!(musician_id: musician_2.id, date: 'April 15, 2022', room_id: room_3.id)
musician_3.bookings.create!(musician_id: musician_3.id, date: 'April 14, 2022', room_id: room_4.id)
