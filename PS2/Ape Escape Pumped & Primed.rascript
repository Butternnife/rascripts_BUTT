// Ape Escape: Pumped & Primed
// #ID = 19243


function Delta(mem) => prev(mem)

//1st Round 1
stunclubs1 = 0x00
dragonfly1 = 0x01
slingshot1 = 0x02
boats1 = 0x03
vsJake = 0x04
//1st Round 2
hoops1 = 0x05
rcCars1 = 0x06
waterMech1 = 0x07
tanks1 = 0x08
//2nd Round 1
stunclubs2 = 0x09
dragonfly2 = 0x0a
slingshot2 = 0x0b
boats2 = 0x0c
vsSpecter = 0x0d
//2nd Round 2
hoops2 = 0x0e
rcCars2 = 0x0f
waterMech2 = 0x10
tanks2 = 0x11
//Semi Final 1
sfMatch_A = 0x12
sfCourse_A = 0x13
sfMatch_B = 0x14
vsJake2 = 0x15
//Semi Final 2
sfMatch_C = 0x16
sfCourse_B = 0x17
sfWaterMech = 0x18
//Final 1
fMatch_A = 0x19
fCourse_A = 0x1a
fBoats = 0x1b
vsSpecter2 = 0x1c
//Final 2
fMatch_B = 0x1d
fCourse_B = 0x1e
fTanks = 0x1f
//Grid Core
megaBreak1 = 0x20
megaBreak2 = 0x21
megaBreak3 = 0x22
megaBreak4 = 0x23
vsPipotron = 0x24
gigaBreak1 = 0x25
gigaBreak2 = 0x26
gigaBreak3 = 0x27
gigaBreak4 = 0x28
vsJake3 = 0x29
teraBreak1 = 0x2a
teraBreak2 = 0x2b
teraBreak3 = 0x2c
teraBreak4 = 0x2d
vsSpecter3 = 0x2e
nanoGrid1 = 0x2f
nanoGrid2 = 0x30
nanoGrid3 = 0x31
nanoGrid4 = 0x32
vsGridCore = 0x33








// $51AB60: Tournaments Unlocked [32-bit]
//          
//          0x00 = 1st Round 1
//          0x01 = VS Jake
//          0x02 = 1st Round 2
//          0x03 = 2nd Round 1
//          0x04 = VS Specter
//          0x05 = 2nd Round 2
//          0x06 = Semi Final 1
//          0x07 = VS Jake 2
//          0x08 = Semi Final 2
//          0x09 = Final 1
//          0x0a = VS Specter 2
//          0x0b = Final 2
//          0x0c = Megabreak 1
//          0x0d = Megabreak 2
//          0x0e = Megabreak 3
//          0x0f = Megabreak 4
//          0x10 = VS Pipotron
//          0x11 = Gigabreak 1
//          0x12 = Gigabreak 2
//          0x13 = Gigabreak 3
//          0x14 = Gigabreak 4
//          0x15 = VS Jake 3
//          0x16 = Terabreak 1
//          0x17 = Terabreak 2
//          0x18 = Terabreak 3
//          0x19 = Terabreak 4
//          0x1a = VS Specter 3
//          0x1b = Nano Grid 1
//          0x1c = Nano Grid 2
//          0x1d = Nano Grid 3
//          0x1e = Nano Grid 4
//          0x1f =  VS Grid Core
function tourneysUnlocked() => dword(0x51AB60)

// $51ABF3: PASSWORD: All Gadgets [8-bit]
//          
//          0x00 = Off
//          0x01 = On
function gadgetCheatOff() => byte(0x51ABF3) == 0x00

// $51EBCD: In-Game?
function inGame() => byte(0x51EBCD) == 0x01

// $5211E0: TOURNAMENT ID (THE ONE FOR THE ONES THAT PLAYS THEM ALL AT ONCE IN STORY MODE, Y'KNOW? LIKE A PLAYLIST) [32-Bit]
//
function tourneyMedleyID() => dword(0x5211E0)

// $5BF920: Current Tournament ID [32-bit]
function TourneyID() => dword(0x5BF920)


//Screen ID? [32-bit]

//0x01 = Title Screen
//0x02 = File Select
//0x03 = Mode Select
//0x04 = Character Select
//0x05 = Tournament Select
//0x08 = VS Tournament Select


function inStoryMode() => dword(0x51eb98) == 0x05


function medleyCompleted(name, currentMedley){
    
    achievement(
    title = name, points = 0,
    description = "Clear " + name,
     badge = "440414", published = " ", 
    trigger = inStoryMode() && tourneyMedleyID() == currentMedley && gadgetCheatOff() && inGame()&& 
              Delta(tourneysUnlocked()) == currentMedley && tourneysUnlocked() == currentMedley + 1
)

    
    
}



//ACHIEVEMENTS//




achievement(
    title = "The First Round!", points = 0,
    description = "Clear \"1st Round 1\"",
    id = 389792, badge = "440414", published = "1/16/2024 4:16:47 AM", modified = "1/16/2024 4:16:47 AM",
    trigger = inStoryMode()&& tourneyMedleyID() == 0x00 && gadgetCheatOff() && inGame() && 
              Delta(tourneysUnlocked()) == 0x00 && tourneysUnlocked() == 0x01
)




medleyCompleted("Vs Jake", 0x01)

medleyCompleted("1st Round 2", 0x02)
