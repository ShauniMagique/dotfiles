#!/bin/bash

if pgrep -x rofi > /dev/null; then
  pkill rofi
  exit 0
fi

CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/emoji-picker"
CACHE_FILE="$CACHE_DIR/emoji.txt"
EMOJI_DATA="$CACHE_DIR/emoji-data.txt"

mkdir -p "$CACHE_DIR"

if [ ! -f "$EMOJI_DATA" ]; then
  cat > "$EMOJI_DATA" << 'EMOJIS'
😀 grinning face
😂 face with tears of joy
🤣 rolling on the floor laughing
😊 smiling face with smiling eyes
😍 smiling face with heart-eyes
🥰 smiling face with hearts
😘 face blowing a kiss
😗 kissing face
😚 kissing face with closed eyes
😙 kissing face with smiling eyes
🥲 smiling face with tear
😋 face savoring food
😛 face with tongue
😜 winking face with tongue
🤩 star-struck
😎 smiling face with sunglasses
🤗 hugging face
🤔 thinking face
🤭 face with hand over mouth
🤫 shushing face
🤤 drooling face
😐 neutral face
😑 expressionless face
😒 unamused face
🙄 face with rolling eyes
😬 grimacing face
😮 face with open mouth
😯 hushed face
😲 astonished face
😳 flushed face
🥺 pleading face
😢 crying face
😭 loudly crying face
😤 face with steam from nose
😡 pouting face
🤬 face with symbols on mouth
😈 smiling face with horns
👿 angry face with horns
💀 skull
☠️ skull and crossbones
💩 pile of poo
🤡 clown face
👹 ogre
👺 goblin
👻 ghost
👽 alien
👾 alien monster
🤖 robot
😺 grinning cat
😸 grinning cat with smiling eyes
😹 cat with tears of joy
😻 smiling cat with heart-eyes
😼 cat with wry smile
😽 kissing cat
🙀 weary cat
😿 crying cat
😾 pouting cat
🙈 see-no-evil monkey
🙉 hear-no-evil monkey
🙊 speak-no-evil monkey
💋 kiss mark
💌 love letter
💝 heart with ribbon
💖 sparkling heart
💗 growing heart
💓 beating heart
💞 revolving hearts
💕 two hearts
💟 heart decoration
❣️ heart exclamation
💔 broken heart
❤️ red heart
🧡 orange heart
💛 yellow heart
💚 green heart
💙 blue heart
💜 purple heart
🤎 brown heart
🖤 black heart
🤍 white heart
💯 hundred points
💢 anger symbol
💬 speech balloon
👁️‍🗨️ eye in speech bubble
🗨️ left speech bubble
🗯️ right anger bubble
💤 zzz
💦 sweat droplets
💨 dashing away
🕳️ hole
👋 waving hand
🤚 raised back of hand
🖐️ hand with fingers splayed
✋ raised hand
🖖 vulcan salute
👌 OK hand
🤌 pinched fingers
🤏 pinching hand
✌️ victory hand
🤞 crossed fingers
🤟 love-you gesture
🤘 sign of the horns
🤙 call me hand
👈 backhand index pointing left
👉 backhand index pointing right
👆 backhand index pointing up
🖕 middle finger
👇 backhand index pointing down
☝️ index pointing up
👍 thumbs up
👎 thumbs down
✊ raised fist
👊 oncoming fist
🤛 left-facing fist
🤜 right-facing fist
👏 clapping hands
🙌 raising hands
👐 open hands
🤲 palms up together
🤝 handshake
🙏 folded hands
✍️ writing hand
💅 nail polish
🤳 selfie
💪 flexed biceps
🦵 leg
🦶 foot
👂 ear
👃 nose
🧠 brain
🫀 heart
🫁 lungs
🦷 tooth
🦴 bone
👀 eyes
👁️ eye
👅 tongue
👄 mouth
👶 baby
🧒 child
👦 boy
👧 girl
🧑 person
👱 person blond hair
👨 man
🧔 man beard
👨‍🦰 man red hair
👨‍🦱 man curly hair
👨‍🦳 man white hair
👨‍🦲 man bald
👩 woman
👩‍🦰 woman red hair
👩‍🦱 woman curly hair
👩‍🦳 woman white hair
👩‍🦲 woman bald
🧑‍🦰 person red hair
🧑‍🦱 person curly hair
🧑‍🦳 person white hair
🧑‍🦲 person bald
👴 old man
👵 old woman
🧓 older person
🙍 person frowning
🙍‍♂️ man frowning
🙍‍♀️ woman frowning
🙎 person pouting
🙎‍♂️ man pouting
🙎‍♀️ woman pouting
🙅 person gesturing no
🙅‍♂️ man gesturing no
🙅‍♀️ woman gesturing no
🙆 person gesturing ok
🙆‍♂️ man gesturing ok
🙆‍♀️ woman gesturing ok
💁 person tipping hand
💁‍♂️ man tipping hand
💁‍♀️ woman tipping hand
🙋 person raising hand
🙋‍♂️ man raising hand
🙋‍♀️ woman raising hand
🧏 deaf person
🙇 person bowing
🙇‍♂️ man bowing
🙇‍♀️ woman bowing
🤦 person facepalming
🤦‍♂️ man facepalming
🤦‍♀️ woman facepalming
🤷 person shrugging
🤷‍♂️ man shrugging
🤷‍♀️ woman shrugging
👮 police officer
👮‍♂️ man police officer
👮‍♀️ woman police officer
🕵️ detective
💂 guard
💂‍♂️ man guard
💂‍♀️ woman guard
🥷 ninja
👷 construction worker
👷‍♂️ man construction worker
👷‍♀️ woman construction worker
🤴 prince
👸 princess
👳 person wearing turban
👳‍♂️ man wearing turban
👳‍♀️ woman wearing turban
👲 person with skullcap
🧕 woman with headscarf
🤵 person in tuxedo
👰 person with veil
🤰 pregnant woman
🤱 breast-feeding
👼 baby angel
🎅 Santa Claus
🤶 Mrs. Claus
🧑‍🎄 mx claus
🦸 superhero
🦸‍♂️ man superhero
🦸‍♀️ woman superhero
🦹 supervillain
🦹‍♂️ man supervillain
🦹‍♀️ woman supervillain
🧙 mage
🧙‍♂️ man mage
🧙‍♀️ woman mage
🧚 fairy
🧚‍♂️ man fairy
🧚‍♀️ woman fairy
🧛 vampire
🧛‍♂️ man vampire
🧛‍♀️ woman vampire
🧜 merperson
🧜‍♂️ merman
🧜‍♀️ mermaid
🧝 elf
🧝‍♂️ man elf
🧝‍♀️ woman elf
🧞 genie
🧞‍♂️ man genie
🧞‍♀️ woman genie
🧟 zombie
🧟‍♂️ man zombie
🧟‍♀️ woman zombie
🧌 troll
💆 person getting massage
💆‍♂️ man getting massage
💆‍♀️ woman getting massage
💇 person getting haircut
💇‍♂️ man getting haircut
💇‍♀️ woman getting haircut
🚶 person walking
🚶‍♂️ man walking
🚶‍♀️ woman walking
🧍 person standing
🧎 person kneeling
🏃 person running
🏃‍♂️ man running
🏃‍♀️ woman running
💃 woman dancing
🕺 man dancing
🕴️ person in suit levitating
👯 people with bunny ears
👯‍♂️ men with bunny ears
👯‍♀️ women with bunny ears
🧖 person in steamy room
🧗 person climbing
🤸 person cartwheeling
🏋️ person lifting weights
🏋️‍♂️ man lifting weights
🏋️‍♀️ woman lifting weights
🚴 person biking
🚴‍♂️ man biking
🚴‍♀️ woman biking
🚵 person mountain biking
🏇 horse racing
🧘 person in lotus position
🛀 person taking bath
🛌 person in bed
👩‍🤝‍👩 people holding hands
👫 woman and man holding hands
👬 men holding hands
👭 women holding hands
🧑‍🤝‍🧑 people holding hands
👪 family
👨‍👩‍👦 family man woman boy
👨‍👩‍👧 family man woman girl
👩‍👩‍👦 family woman woman boy
👩‍👩‍👧 family woman woman girl
👨‍👨‍👦 family man man boy
👨‍👨‍👧 family man man girl
👨‍👦 family man boy
👨‍👧 family man girl
👩‍👦 family woman boy
👩‍👧 family woman girl
🗣️ speaking head
👤 bust in silhouette
👥 busts in silhouette
🫂 people hugging
👣 footprints
🐵 monkey face
🐒 monkey
🦍 gorilla
🦧 orangutan
🐶 dog face
🐕 dog
🦮 guide dog
🐩 poodle
🐺 wolf
🦊 fox
🦝 raccoon
🐱 cat face
🐈 cat
🦁 lion
🐯 tiger face
🐅 tiger
🐆 leopard
🐴 horse face
🐎 horse
🦄 unicorn
🦓 zebra
🦌 deer
🦬 bison
🐮 cow face
🐂 ox
🐃 water buffalo
🐄 cow
🐷 pig face
🐖 pig
🐗 boar
🐽 pig nose
🐏 ram
🐑 ewe
🐐 goat
🐪 camel
🐫 two-hump camel
🦙 llama
🦒 giraffe
🐘 elephant
🦣 mammoth
🦏 rhinoceros
🦛 hippopotamus
🐭 mouse face
🐁 mouse
🐀 rat
🐹 hamster
🐰 rabbit face
🐇 rabbit
🐿️ chipmunk
🦫 beaver
🦔 hedgehog
🦇 bat
🐻 bear
🐻‍❄️ polar bear
🐨 koala
🐼 panda
🦥 sloth
🦦 otter
🦨 skunk
🦘 kangaroo
🦡 badger
🐾 paw prints
🦃 turkey
🐔 chicken
🐓 rooster
🐣 hatching chick
🐤 baby chick
🐥 front-facing baby chick
🐦 bird
🐧 penguin
🕊️ dove
🦅 eagle
🦆 duck
🦢 swan
🦉 owl
🦤 dodo
🪶 feather
🦩 flamingo
🦚 peacock
🦜 parrot
🐸 frog
🐊 crocodile
🐢 turtle
🦎 lizard
🐍 snake
🐲 dragon face
🐉 dragon
🦕 sauropod
🦖 T-Rex
🐳 spouting whale
🐋 whale
🐬 dolphin
🦭 seal
🐟 fish
🐠 tropical fish
🐡 blowfish
🦈 shark
🐙 octopus
🐚 spiral shell
🐌 snail
🦋 butterfly
🐛 bug
🐜 ant
🐝 honeybee
🪲 beetle
🐞 lady beetle
🦗 cricket
🪳 cockroach
🕷️ spider
🕸️ spider web
🦂 scorpion
🦟 mosquito
🪰 fly
🪱 worm
🦠 microbe
💐 bouquet
🌸 cherry blossom
💮 white flower
🏵️ rosette
🌹 rose
🥀 wilted flower
🌺 hibiscus
🌻 sunflower
🌼 blossom
🌷 tulip
🌱 seedling
🪴 potted plant
🌲 evergreen tree
🌳 deciduous tree
🌴 palm tree
🌵 cactus
🌾 sheaf of rice
🌿 herb
☘️ shamrock
🍀 four leaf clover
🍁 maple leaf
🍂 fallen leaf
🍃 leaf fluttering in wind
🍇 grapes
🍈 melon
🍉 watermelon
🍊 tangerine
🍋 lemon
🍌 banana
🍍 pineapple
🥭 mango
🍎 red apple
🍏 green apple
🍐 pear
🍑 peach
🍒 cherries
🍓 strawberry
🫐 blueberries
🥝 kiwi fruit
🍅 tomato
🫒 olive
🥥 coconut
🥑 avocado
🍆 eggplant
🥔 potato
🥕 carrot
🌽 ear of corn
🌶️ hot pepper
🫑 bell pepper
🥒 cucumber
🥬 leafy green
🥦 broccoli
🧄 garlic
🧅 onion
🍄 mushroom
🥜 peanuts
🌰 chestnut
🍞 bread
🥐 croissant
🥖 baguette bread
🫓 flatbread
🥨 pretzel
🥯 bagel
🥞 pancakes
🧇 waffle
🧀 cheese wedge
🍖 meat on bone
🍗 poultry leg
🥩 cut of meat
🥓 bacon
🍔 hamburger
🍟 french fries
🍕 pizza
🌭 hot dog
🥪 sandwich
🌮 taco
🌯 burrito
🫔 tamale
🥙 stuffed flatbread
🧆 falafel
🥚 egg
🍳 cooking
🥘 shallow pan of food
🍲 pot of food
🫕 fondue
🥣 bowl with spoon
🥗 green salad
🍿 popcorn
🧈 butter
🧂 salt
🥫 canned food
🍵 teacup without handle
🍶 sake
🍾 bottle with popping cork
🍷 wine glass
🍸 cocktail glass
🍹 tropical drink
🍺 beer mug
🍻 clinking beer mugs
🥂 clinking glasses
🥃 tumbler glass
🫗 pouring liquid
🥤 cup with straw
🧋 bubble tea
🧃 beverage box
🧉 mate
🧊 ice
🍴 fork and knife
🍽️ fork and knife with plate
🥄 spoon
🔪 kitchen knife
🏺 amphora
🌍 globe showing Europe-Africa
🌎 globe showing Americas
🌏 globe showing Asia-Australia
🌐 globe with meridians
🗺️ world map
🗾 map of Japan
🧭 compass
🏔️ snow-capped mountain
⛰️ mountain
🌋 volcano
🗻 mount fuji
🏕️ camping
🏖️ beach with umbrella
🏜️ desert
🏝️ desert island
🏞️ national park
🏟️ stadium
🏛️ classical building
🏗️ building construction
🧱 brick
🪨 rock
🪵 wood
🛖 hut
🏘️ houses
🏚️ derelict house
🏠 house
🏡 house with garden
🏢 office building
🏣 Japanese post office
🏤 post office
🏥 hospital
🏦 bank
🏨 hotel
🏩 love hotel
🏪 convenience store
🏫 school
🏬 department store
🏭 factory
🏯 Japanese castle
🏰 castle
💒 wedding
🗼 Tokyo tower
🗽 Statue of Liberty
⛪ church
🕌 mosque
🛕 hindu temple
🕍 synagogue
⛩️ shinto shrine
🕋 kaaba
⛲ fountain
⛺ tent
🌁 foggy
🌃 night with stars
🏙️ cityscape
🌄 sunrise over mountains
🌅 sunrise
🌆 cityscape at dusk
🌇 sunset
🌉 bridge at night
♨️ hot springs
🎠 carousel horse
🛝 playground slide
🎡 ferris wheel
🎢 roller coaster
💈 barber pole
🎪 circus tent
🚂 locomotive
🚃 railway car
🚄 high-speed train
🚅 bullet train
🚆 train
🚇 metro
🚈 light rail
🚉 station
🚊 tram
🚝 monorail
🚞 mountain railway
🚋 tram car
🚌 bus
🚍 oncoming bus
🚎 trolleybus
🚐 minibus
🚑 ambulance
🚒 fire engine
🚓 police car
🚔 oncoming police car
🚕 taxi
🚖 oncoming taxi
🚗 automobile
🚘 oncoming automobile
🚙 sport utility vehicle
🛻 pickup truck
🚚 delivery truck
🚛 articulated lorry
🚜 tractor
🏎️ racing car
🏍️ motorcycle
🛵 motor scooter
🛴 kick scooter
🛹 skateboard
🛼 roller skate
🚲 bicycle
🛴 kick scooter
🛵 motor scooter
🛞 wheel
🚏 bus stop
🛣️ motorway
🛤️ railway track
🛢️ oil drum
⛽ fuel pump
🛟 ring buoy
🚨 police car light
🚥 horizontal traffic light
🚦 vertical traffic light
🛑 stop sign
🚧 construction
⚓ anchor
🛟 ring buoy
⛵ sailboat
🛶 canoe
🚤 speedboat
🛳️ passenger ship
⛴️ ferry
🛥️ motor boat
🚢 ship
✈️ airplane
🛩️ small airplane
🛫 airplane departure
🛬 airplane arrival
🪂 parachute
💺 seat
🚁 helicopter
🚟 suspension railway
🚠 mountain cableway
🚡 aerial tramway
🛰️ satellite
🚀 rocket
🛸 flying saucer
🛎️ bellhop bell
🧳 luggage
⌛ hourglass done
⏳ hourglass not done
⌚ watch
⏰ alarm clock
⏱️ stopwatch
⏲️ timer clock
🕰️ mantelpiece clock
🕛 twelve o'clock
🕧 twelve-thirty
🕐 one o'clock
🕜 one-thirty
🕑 two o'clock
🕝 two-thirty
🕒 three o'clock
🕞 three-thirty
🕓 four o'clock
🕟 four-thirty
🕔 five o'clock
🕠 five-thirty
🕕 six o'clock
🕡 six-thirty
🕖 seven o'clock
🕢 seven-thirty
🕗 eight o'clock
🕣 eight-thirty
🕘 nine o'clock
🕤 nine-thirty
🕙 ten o'clock
🕥 ten-thirty
🕚 eleven o'clock
🕦 eleven-thirty
🌑 new moon
🌒 waxing crescent moon
🌓 first quarter moon
🌔 waxing gibbous moon
🌕 full moon
🌖 waning gibbous moon
🌗 last quarter moon
🌘 waning crescent moon
🌙 crescent moon
🌚 new moon face
🌛 first quarter moon face
🌜 last quarter moon face
🌝 full moon face
🌞 sun with face
🪐 ringed planet
⭐ star
🌟 glowing star
🌠 shooting star
🌌 milky way
☁️ cloud
⛅ sun behind cloud
⛈️ cloud with lightning and rain
🌤️ sun behind small cloud
🌥️ sun behind large cloud
🌦️ sun behind rain cloud
🌧️ cloud with rain
🌨️ cloud with snow
🌩️ cloud with lightning
🌪️ tornado
🌫️ fog
🌬️ wind face
🌈 rainbow
☂️ umbrella
☔ umbrella with rain drops
⚡ high voltage
❄️ snowflake
☃️ snowman
⛄ snowman without snow
☄️ comet
🔥 fire
💧 droplet
🌊 water wave
🎃 jack-o-lantern
🎄 Christmas tree
🎆 fireworks
🎇 sparkler
🧨 firecracker
✨ sparkles
🎈 balloon
🎉 party popper
🎊 confetti ball
🎋 tanabata tree
🎍 pine decoration
🎎 Japanese dolls
🎏 carp streamer
🎐 wind chime
🎑 moon viewing ceremony
🧧 red envelope
🎀 ribbon
🎁 wrapped gift
🎗️ reminder ribbon
🎟️ admission tickets
🎫 ticket
🎖️ military medal
🏆 trophy
🏅 sports medal
🥇 1st place medal
🥈 2nd place medal
🥉 3rd place medal
⚽ soccer ball
⚾ baseball
🥎 softball
🏀 basketball
🏐 volleyball
🏈 american football
🏉 rugby football
🎾 tennis
🥏 flying disc
🎳 bowling
🏏 cricket game
🏑 field hockey
🏒 ice hockey
🥍 lacrosse
🏓 ping pong
🏸 badminton
🥊 boxing glove
🥋 martial arts uniform
🥅 goal net
⛳ flag in hole
⛸️ ice skate
🎣 fishing pole
🤿 diving mask
🎽 running shirt
🎿 skis
🛷 sled
🥌 curling stone
🎯 bullseye
🪀 yo-yo
🪁 kite
🔮 crystal ball
🪄 magic wand
🧿 nazar amulet
🪬 hamsa
🎮 video game
🕹️ joystick
🎰 slot machine
🎲 game die
🧩 puzzle piece
🧸 teddy bear
🪆 nesting dolls
♠️ spade suit
♥️ heart suit
♦️ diamond suit
♣️ club suit
♟️ chess pawn
🃏 joker
🀄 mahjong red dragon
🎴 flower playing cards
🎭 performing arts
🖼️ framed picture
🎨 artist palette
🧵 thread
🪡 sewing needle
🧶 yarn
🪢 knot
👓 glasses
🕶️ sunglasses
🥽 goggles
🥼 lab coat
🦺 safety vest
👔 necktie
👕 t-shirt
👖 jeans
🧣 scarf
🧤 gloves
🧥 coat
🧦 socks
👗 dress
👘 kimono
🥻 sari
🩱 one-piece swimsuit
🩲 briefs
🩳 shorts
👙 bikini
👚 woman's clothes
👛 purse
👜 handbag
👝 clutch bag
🛍️ shopping bags
🎒 backpack
🩴 thong sandal
👞 man's shoe
👟 running shoe
🥾 hiking boot
🥿 flat shoe
👠 high-heeled shoe
👡 woman's sandal
🩰 ballet shoes
👢 woman's boot
👑 crown
👒 woman's hat
🎩 top hat
🎓 graduation cap
🧢 billed cap
🪖 military helmet
⛑️ rescue worker's helmet
📿 prayer beads
💄 lipstick
💍 ring
💎 gem stone
🔇 muted speaker
🔈 speaker low volume
🔉 speaker medium volume
🔊 speaker high volume
📢 loudspeaker
📣 megaphone
📯 postal horn
🔔 bell
🔕 bell with slash
🎵 musical note
🎶 musical notes
🎙️ studio microphone
🎚️ level slider
🎛️ control knobs
🎤 microphone
🎧 headphone
📻 radio
🎷 saxophone
🪗 accordion
🎸 guitar
🎹 musical keyboard
🎺 trumpet
🎻 violin
🪕 banjo
🥁 drum
🪘 long drum
📱 mobile phone
📲 mobile phone with arrow
☎️ telephone
📞 telephone receiver
📟 pager
📠 fax machine
🔋 battery
🪫 low battery
🔌 electric plug
💻 laptop
🖥️ desktop computer
🖨️ printer
⌨️ keyboard
🖱️ computer mouse
🖲️ trackball
💽 computer disk
💾 floppy disk
💿 optical disk
📀 dvd
🧮 abacus
🎥 movie camera
🎞️ film frames
📽️ film projector
🎬 clapper board
📺 television
📷 camera
📸 camera with flash
📹 video camera
📼 videocassette
🔍 magnifying glass tilted left
🔎 magnifying glass tilted right
🕯️ candle
💡 light bulb
🔦 flashlight
🏮 red paper lantern
🪔 diya lamp
📔 notebook with decorative cover
📕 closed book
📖 open book
📗 green book
📘 blue book
📙 orange book
📚 books
📓 notebook
📒 ledger
📃 page with curl
📜 scroll
📄 page facing up
📰 newspaper
🗞️ rolled-up newspaper
📑 bookmark tabs
🔖 bookmark
🏷️ label
💰 money bag
🪙 coin
💴 yen banknote
💵 dollar banknote
💶 euro banknote
💷 pound banknote
💸 money with wings
💳 credit card
🧾 receipt
💹 chart increasing with yen
✉️ envelope
📧 e-mail
📨 incoming envelope
📩 envelope with arrow
📤 outbox tray
📥 inbox tray
📦 package
📫 closed mailbox with raised flag
📪 closed mailbox with lowered flag
📬 open mailbox with raised flag
📭 open mailbox with lowered flag
📮 postbox
🗳️ ballot box with ballot
✏️ pencil
✒️ black nib
🖋️ fountain pen
🖊️ pen
🖌️ paintbrush
🖍️ crayon
📝 memo
💼 briefcase
📁 file folder
📂 open file folder
🗂️ card index dividers
📅 calendar
📆 tear-off calendar
📇 card index
📈 chart increasing
📉 chart decreasing
📊 bar chart
📋 clipboard
📌 pushpin
📍 round pushpin
📎 paperclip
🖇️ linked paperclips
📏 straight ruler
📐 triangular ruler
✂️ scissors
🗃️ card file box
🗄️ file cabinet
🗑️ wastebasket
🔒 locked
🔓 unlocked
🔏 locked with pen
🔐 locked with key
🔑 key
🗝️ old key
🔨 hammer
🪓 axe
⛏️ pick
⚒️ hammer and pick
🛠️ hammer and wrench
🗡️ dagger
⚔️ crossed swords
🔫 water pistol
🛡️ shield
🔧 wrench
🔩 nut and bolt
⚙️ gear
🗜️ clamp
⚖️ balance scale
🦯 white cane
🔗 link
⛓️ chains
🪝 hook
🧰 toolbox
🧲 magnet
🪜 ladder
⚗️ alembic
🧪 test tube
🧫 petri dish
🧬 dna
🔬 microscope
🔭 telescope
📡 satellite antenna
💉 syringe
🩸 drop of blood
💊 pill
🩹 adhesive bandage
🩺 stethoscope
🚪 door
🛗 elevator
🪞 mirror
🪟 window
🛏️ bed
🛋️ couch and lamp
🪑 chair
🚽 toilet
🪠 plunger
🚿 shower
🛁 bathtub
🪤 mouse trap
🪒 razor
🧴 lotion bottle
🧷 safety pin
🧹 broom
🧺 basket
🧻 roll of paper
🪣 bucket
🧼 soap
🪥 toothbrush
🧽 sponge
🧯 fire extinguisher
🛒 shopping cart
🚬 cigarette
⚰️ coffin
🪦 headstone
⚱️ funeral urn
🗿 moai
🪧 placard
EMOJIS
fi

SELECTION=$(rofi -dmenu \
  -theme "$HOME/.config/rofi/emoji.rasi" \
  -p "Emoji" \
  -i \
  < "$EMOJI_DATA" | awk '{print $1}')

if [ -n "$SELECTION" ]; then
  echo -n "$SELECTION" | wl-copy
  wtype "$SELECTION"
fi
