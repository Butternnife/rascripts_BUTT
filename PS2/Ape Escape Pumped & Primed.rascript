// Ape Escape: Pumped & Primed
// #ID = 19243

function Delta(addr){
    return prev(addr)
}


// $00017F: Again Anchor 0
function PlayerPointer1() => byte(0x00017F)

// $000180: Again Anchor 1
function PlayerPointer2() => byte(0x000180)

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
function TourneysUnlocked() => dword(0x51AB60)

// $51AB64: VS Grid Core Beaten [32-bit]
//          
//          0x00 = No
//          0x01 = Yes
function GridCoreStatus() => dword(0x51AB64)

// $51ABF3: PASSWORD: All Gadgets [8-bit]
//          
//          0x00 = Off
//          0x01 = On
function GadgetCheat() => byte(0x51ABF3)
function AntiCheat(){
    
    all_of(range(0x0051abf3, 0x0051abfa,0x0051abfc,0x0051abfd,0x0051abfe,0x0051abff,0x0051ac00,0x0051ac01,0x0051ac02), b => byte(b) == 0)
}

// $51B560: Stunclubs 1 Member's Card [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Mechabo1Gift1() => byte(0x51B560)

// $51B561: Stunclubs 1 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Mechabo1Gift2() => byte(0x51B561)

// $51B562: Stunclubs 1 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Mechabo1Gift3() => byte(0x51B562)

// $51B564: Dragonfly 1 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Flyer1Gift1() => byte(0x51B564)

// $51B565: Dragonfly 1 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Flyer1Gift2() => byte(0x51B565)

// $51B566: Dragonfly 1 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Flyer1Gift3() => byte(0x51B566)

// $51B568: Slingshot 1 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Sling1Gift1() => byte(0x51B568)

// $51B569: Slingshot 1 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Sling1Gift2() => byte(0x51B569)

// $51B56A: Slingshot 1 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Sling1Gift3() => byte(0x51B56A)

// $51B56C: Boats 1 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Boat1Gift1() => byte(0x51B56C)

// $51B56D: Boats 1 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Boat2Gift1() => byte(0x51B56D)

// $51B56E: Boats 1 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Boat3Gift1() => byte(0x51B56E)

// $51B570: Vs Jake Member's Card [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Hiroki1Gift1() => byte(0x51B570)

// $51B571: Vs Jake Letter [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Hiroki1Gift2() => byte(0x51B571)

// $51B572: Vs Jake Present [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Hiroki1Gift3() => byte(0x51B572)

// $51B574: Hoops 1 Member's Card [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Dash1Gift1() => byte(0x51B574)

// $51B575: Hoops 1 Letter [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Dash1Gift2() => byte(0x51B575)

// $51B576: Hoops 1 Present [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Dash1Gift3() => byte(0x51B576)

// $51B578: RC Cars 1 Member's Card [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function RC1Gift1() => byte(0x51B578)

// $51B579: RC Cars 1 Letter [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function RC1Gift2() => byte(0x51B579)

// $51B57A: RC Cars 1 Present [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function RC1Gift3() => byte(0x51B57A)

// $51B57C: WaterMech 1 Member's Card [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Water1Gift1() => byte(0x51B57C)

// $51B57D: WaterMech 1 Letter [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Water1Gift2() => byte(0x51B57D)

// $51B57E: WaterMech 1 Present [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Water1Gift3() => byte(0x51B57E)

// $51B580: Tanks 1 Member's Card [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Tank1Gift1() => byte(0x51B580)

// $51B581: Tanks 1 Letter [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Tank1Gift2() => byte(0x51B581)

// $51B582: Tanks 1 Present [8-Bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Tank1Gift3() => byte(0x51B582)

// $51B584: Stunclubs 2 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Mechabo2Gift1() => byte(0x51B584)

// $51B585: Stunclubs 2 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Mechabo2Gift2() => byte(0x51B585)

// $51B586: Stunclubs 2 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Mechabo2Gift3() => byte(0x51B586)

// $51B588: Dragonfly 2 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Flyer2Gift1() => byte(0x51B588)

// $51B589: Dragonfly 2 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Flyer2Gift2() => byte(0x51B589)

// $51B58A: Dragonfly 2 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
//          
//          (Unlocks stuff in Hidden Tape 1)
function Flyer2Gift3() => byte(0x51B58A)

// $51B58C: Slingshot 2 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Sling2Gift1() => byte(0x51B58C)

// $51B58D: Slingshot 2 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Sling2Gift2() => byte(0x51B58D)

// $51B58E: Slingshot 2 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Sling2Gift3() => byte(0x51B58E)

// $51B590: Boats 2 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Boat2Gift1() => byte(0x51B590)

// $51B591: Boats 2 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Boat2Gift2() => byte(0x51B591)

// $51B592: Boats 2 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Boat2Gift3() => byte(0x51B592)

// $51B594: VS Specter Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Spector1Gift1() => byte(0x51B594)

// $51B595: VS Specter Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Spector1Gift2() => byte(0x51B595)

// $51B596: VS Specter Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Spector1Gift3() => byte(0x51B596)

// $51B598: Hoops 2 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Dash2Gift1() => byte(0x51B598)

// $51B599: Hoops 2 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Dash2Gift2() => byte(0x51B599)

// $51B59A: Hoops 2 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Dash2Gift3() => byte(0x51B59A)

// $51B59C: RC Cars 2 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function RC2Gift1() => byte(0x51B59C)

// $51B59D: RC Cars 2 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function RC2Gift2() => byte(0x51B59D)

// $51B59E: RC Cars 2 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function RC2Gift3() => byte(0x51B59E)

// $51B5A0: WaterMech 2 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Water2Gift1() => byte(0x51B5A0)

// $51B5A1: WaterMech 2 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Water2Gift2() => byte(0x51B5A1)

// $51B5A2: WaterMech 2 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Water2Gift3() => byte(0x51B5A2)

// $51B5A4: Tanks 2 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Tank2Gift1() => byte(0x51B5A4)

// $51B5A5: Tanks 2 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Tank2Gift2() => byte(0x51B5A5)

// $51B5A6: Tanks 2 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Tank2Gift3() => byte(0x51B5A6)

// $51B5A8: SF Match A Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function SFMAGift1() => byte(0x51B5A8)

// $51B5A9: SF Match A Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function SFMAGift2() => byte(0x51B5A9)

// $51B5AA: SF Match A Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function SFMAGift3() => byte(0x51B5AA)

// $51B5AC: SF Course A Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function SFCAGift1() => byte(0x51B5AC)

// $51B5AD: SF Course A Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function SFCAGift2() => byte(0x51B5AD)

// $51B5AE: SF Course A Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function SFCAGift3() => byte(0x51B5AE)

// $51B5B0: SF Match B Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function SFMBGift1() => byte(0x51B5B0)

// $51B5B1: SF Match B Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function SFMBGift2() => byte(0x51B5B1)

// $51B5B2: SF Match B Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
//          
//          (Unlocks stuff in Hidden Tape 2)
function SFMBGift3() => byte(0x51B5B2)

// $51B5B4: VS Jake 2 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Hiroki2Gift1() => byte(0x51B5B4)

// $51B5B5: VS Jake 2 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Hiroki2Gift2() => byte(0x51B5B5)

// $51B5B6: VS Jake 2 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Hiroki2Gift3() => byte(0x51B5B6)

// $51B5D0: VS Specter 2 Member's Card[8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Spector1Gift1() => byte(0x51B5D0)

// $51B5D1: VS Specter 2 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Spector1Gift2() => byte(0x51B5D1)

// $51B5D2: VS Specter 2 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Spector1Gift3() => byte(0x51B5D2)

// $51B5F0: VS Pipotron Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function PipotronGift1() => byte(0x51B5F0)

// $51B5F1: VS Pipotron Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function PipotronGift2() => byte(0x51B5F1)

// $51B5F2: VS Pipotron Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function PipotronGift3() => byte(0x51B5F2)

// $51B604: VS Jake 3 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Hiroki3Gift1() => byte(0x51B604)

// $51B605: VS Jake 3 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Hiroki3Gift2() => byte(0x51B605)

// $51B606: VS Jake 3 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Hiroki3Gift3() => byte(0x51B606)

// $51B618: VS Specter 3 Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Spector3Gift1() => byte(0x51B618)

// $51B619: VS Specter 3 Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Spector3Gift2() => byte(0x51B619)

// $51B61A: VS Specter 3 Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function Spector3Gift3() => byte(0x51B61A)

// $51B62C: VS Grid Core Member's Card [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function GridGift1() => byte(0x51B62C)

// $51B62D: VS Grid Core Letter [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
function GridGift2() => byte(0x51B62D)

// $51B62E: VS Grid Core Present [8-bit]
//          
//          0x00 = Unobtained
//          0x01 = Obtained
//          0x02 = Claimed
//          
//          (Unlocks stuff in Hidden Tape 4)
function GridGift3() => byte(0x51B62E)

// $51EB98: Menu Screen ID? [32-bit]
//          
//          0x01 = Title Screen
//          0x02 = File Select
//          0x03 = Mode Select
//          0x04 = Character Select
//          0x05 = Story Mode Tournament Select
//          0x06 = Story Mode to Char Select Transition
//          0x07 = VS Mode
//          0x08 = VS Tournament Select
//          0x09 = VS Character Select
//          0x0c = Progress Select
//          0x0d = Help
//          0x0e = Options
//          0x0a = Edit Battle
//          0x0b = Edit Battle Char Select
//          0x12 = Pre-Character Edit
//          0x16 = Character Edit
//          0x17 = Nickname
//          0x18 = Extra
//          0x19 = Equipment
//          0x1a = Monkey Fan Club
function MenuID() => dword(0x51EB98)

// $51EBCD: InGame?
function InGame() => byte(0x51EBCD)== 0x01



// $5211E0: Tournament Medley ID [32-Bit]
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


// $5211F1: IDK BOSS Still In [8-bit]
function BossResult() => byte(0x5211F1)

// $5211F2: IDK Still In? [8-bit]
function Result() => byte(0x5211F2)

// $521208: Player 1 Points [32-bit]
function P1_POINTS() => dword(0x521208)

function P1_WINNER(){}

// $521244: Player 2 Points [32-bit]
function P2_POINTS() => dword(0x521244)
function P2_WINNER(){}

// $521280: Player 3 Points [32-bit]
function P3_POINTS() => dword(0x521280)
function P3_WINNER(){}

// $5212BC: Player 4 Points [32-bit]
function P4_POINTS() => dword(0x5212BC)
function P4_WINNER(){}

// $5BF920: Current Tournament ID [32-bit]
function TourneyID() => dword(0x5BF920)

// $5BF94C: Character IDs (P1) [32-bit]
//          
//          0x00= Spike
//          0x01= Monkey
//          0x02= Professor
//          0x03= Natalie
//          0x04= Casi
//          0x05= Helga
//          0x06= Team Monkey (Red)
//          0x07= Team Monkey (Blue)
//          0x08= Team Monkey (Black)
//          0x09= Team Monkey (Green)
//          0x0a=Team Monkey (Light Blue)
//          0x0b= Pipotron Red
//          0x0c= Pipotron Blue
//          0x0d= Pipotron Yellow
//          0x0e= Jake
//          0x0f= Dark Jake
function P1_CHAR() => dword(0x5BF94C)

// $5BF958: Player 1 COM? [32-bit]
//          
//          Anything that is not 0x01 will make the player a COM
function P1_COM() => dword(0x5BF958)

// $5BF9C4: Player 2 COM? [32-bit]
//          
//          Anything that is not 0x01 will make the player a COM
function P2_COM() => dword(0x5BF9C4)

// $5BFA30: Player 3 COM? [32-bit]
//          
//          Anything that is not 0x01 will make the player a COM
function P3_COM() => dword(0x5BFA30)

// $5BFA9C: Player 4 COM? [32-bit]
//          
//          Anything that is not 0x01 will make the player a COM
function P4_COM() => dword(0x5BFA9C)


Menu_Screen = {
    
    
    "Title Screen": 0x01,
    "File Select": 0x02,
    "Mode Select": 0x03,
    "Story CharacterSel": 0x04,
    "Story Select": 0x05,
    "StoryToChar": 0x06,
    "VS Mode": 0x07,
    "VS Select": 0x08,
    "VS CharacterSel": 0x09,
    "Edit Battle": 0x0a,
    "Edit CharacterSel": 0x0b,
    "Progress Select": 0x0c,
    "Help": 0x0d,
    "Options": 0x0e,
    "Pre-CharEdit": 0x12,
    "Character Edit": 0x16,
    "Nickname": 0x17,
    "Extra": 0x18,
    "Equipment": 0x19,
    "Monkey Fan Club": 0x1a
    
    
    
}

Tournament_Medley = {
    
    "1st Round 1": 0x00,
    "VS Jake": 0x01,
    "1st Round 2": 0x02,
    "2nd Round 1": 0x03,
    "VS Specter": 0x04,
    "2nd Round 2": 0x05,
    "Semi Final 1": 0x06,
    "VS Jake 2": 0x07,
    "Semi Final 2": 0x08,
    "Final 1": 0x09,
    "VS Specter 2": 0x0a,
    "Final 2": 0x0b,
    "Megabreak 1": 0x0c,
    "Megabreak 2": 0x0d,
    "Megabreak 3": 0x0e,
    "Megabreak 4": 0x0f,
    "VS Pipotron": 0x10,
    "Gigabreak 1": 0x11,
    "Gigabreak 2": 0x12,
    "Gigabreak 3": 0x13,
    "Gigabreak 4": 0x14,
    "VS Jake 3": 0x15,
    "Terabreak 1": 0x16,
    "Terabreak 2": 0x17,
    "Terabreak 3": 0x18,
    "Terabreak 4": 0x19,
    "VS Specter 3": 0x1a,
    "Nano Grid 1": 0x1b,
    "Nano Grid 2": 0x1c,
    "Nano Grid 3": 0x1d,
    "Nano Grid 4": 0x1e,
    "VS Grid Core": 0x1f
    
}


Tournament_Name = {

    "1st Round 1": 0x00,
    "Stunclubs 1": 0x01,
    "Dragonfly 1": 0x02,
    "Slingshot 1": 0x03,
    "Boats 1": 0x04,
    "VS Jake": 0x05,
    "1st Round 2": 0x06,
    "Hoops 1": 0x07,
    "RC Cars 1": 0x08,
    "WaterMech 1": 0x09,
    "Tanks 1": 0x0a,
    "2nd Round 1": 0x0b,
    "Stunclubs 2": 0x0c,
    "Dragonfly 2": 0x0d,
    "Slingshot 2": 0x0e,
    "Boats 2": 0x0f,
    "VS Specter": 0x10,
    "2nd Round 2": 0x11,
    "Hoops 2": 0x12,
    "RC Cars 2": 0x13,
    "WaterMech 2": 0x14,
    "Tanks 2": 0x15,
    "Semi Final 1": 0x16,
    "SF Match A": 0x17,
    "SF Course A": 0x18,
    "SF Match B": 0x19,
    "VS Jake 2": 0x1a,
    "Semi Final 2": 0x1b,
    "SF Match C": 0x1c,
    "SF Course B": 0x1d,
    "SF WaterMech": 0x1e,
    "Final 1": 0x1f,
    "F Match A": 0x20,
    "F Course A": 0x21,
    "F Boats": 0x22,
    "VS Specter 2": 0x23,
    "Final 2": 0x24,
    "F Match B": 0x25,
    "F Course B": 0x26,
    "F Tanks": 0x27,
    "Megabreak 1": 0x28,
    "Megabreak 2": 0x29,
    "Megabreak 3": 0x2a,
    "Megabreak 4": 0x2b,
    "VS Pipotron": 0x2c,
    "Gigabreak 1": 0x2d,
    "Gigabreak 2": 0x2e,
    "Gigabreak 3": 0x2f,
    "Gigabreak 4": 0x30,
    "VS Jake 3": 0x31,
    "Terabreak 1": 0x32,
    "Terabreak 2": 0x33,
    "Terabreak 3": 0x34,
    "Terabreak 4": 0x35,
    "VS Specter 3": 0x36,
    "Nano Grid 1": 0x37,
    "Nano Grid 2": 0x38,
    "Nano Grid 3": 0x39,
    "Nano Grid 4": 0x3a,
    "VS Grid Core": 0x3b


}

StoryMode = 0x5

function TournamentID() => dword(0x0051ebac)
function MedleyID() => dword(0x5211E0)


function TourneyCheevo(tourney_id) {
   
   return MenuID() == StoryMode && 
    TournamentID() == tourney_id &&
    Delta((InGame())) == 0 &&
    InGame() == 1
}


Mechabo1Gifts = array_map(range(0, 2), i => byte(0x51B560 + (0x400 * PlayerPointer1()) + i))
Mechabo1Gifts = array_map(Mechabo1Gifts, v => v / v)



achievement(
    title = "MechaboScriptTest",
    description = "Literally just PLAY Stunclubs 1",
    points = 5,
    trigger = TourneyCheevo(Tournament_Name["Stunclubs 1"])&& AntiCheat()  


)




//sum_of(Mechabo1Gifts && Flyer1Gifts && Sling1Gifts && Boat1Gifts) == 12


achievement(
    title = "The First Round!", points = 0, type="progression",
    description = "Clear \"1st Round 1\" in Story Mode",
    id = 389792, badge = "503861", published = "1/16/2024 4:16:47 AM", modified = "7/7/2024 5:29:49 AM",
    trigger = MenuID() == 5 && MedleyID() == 0 && GadgetCheat() == 0 && InGame() && prev(TourneysUnlocked()) == 0 &&
              TourneysUnlocked() == 1
)


achievement(
    title = "The First Round! (Part 2)", points = 0, type="progression",
    description = "Clear \"1st Round 2\" in Story Mode",
    id = 394897, badge = "447521", published = "2/2/2024 10:10:35 AM", modified = "7/6/2024 11:48:41 PM",
    trigger = MenuID() == 5 && MedleyID() == 2 && GadgetCheat() == 0 && InGame() && prev(TourneysUnlocked()) == 2 &&
              TourneysUnlocked() == 3
)

achievement(
    title = "Jake's Tournament Attack!", points = 0, type="progression",
    description = "Clear \"Vs Jake\" in Story Mode",
    id = 394896, badge = "503862", published = "2/2/2024 10:10:09 AM", modified = "7/7/2024 7:01:22 AM",
    trigger = MenuID() == 5 && MedleyID() == 1 && GadgetCheat() == 0 && InGame() && prev(TourneysUnlocked()) == 1 &&
              TourneysUnlocked() == 2
)

achievement(
    title = "The Second Round!", points = 0, type="progression",
    description = "Clear \"2nd Round 1\" in Story Mode",
    id = 445963, badge = "503635", published = "7/6/2024 7:50:27 PM", modified = "7/7/2024 7:01:39 AM",
    trigger = MenuID() == 5 && MedleyID() == 3 && GadgetCheat() == 0 && InGame() && prev(TourneysUnlocked()) == 3 &&
              TourneysUnlocked() == 4
)


achievement(
    title = "Specter Showdown!", points = 0, type="progression",
    description = "Clear \"VS Specter\"",
    id = 446043, badge = "503617", published = "7/6/2024 11:47:05 PM", modified = "7/6/2024 11:47:05 PM",
    trigger = MenuID() == 5 && MedleyID() == 4 && GadgetCheat() == 0 && InGame() && prev(TourneysUnlocked()) == 4 &&
              TourneysUnlocked() == 5
)

achievement(
    title = "The Second Round! (Part 2)", points = 0, type="progression",
    description = "Clear \"2nd Round 2\" in Story Mode",
    id = 446045, badge = "503618", published = "7/6/2024 11:47:05 PM", modified = "7/6/2024 11:47:05 PM",
    trigger = MenuID() == 5 && MedleyID() == 5 && GadgetCheat() == 0 && InGame() && prev(TourneysUnlocked()) == 5 &&
              TourneysUnlocked() == 6
)

achievement(
    title = "The Semi Finals!", points = 0, type="progression",
    description = "Clear \"Semi Final 1\" in Story Mode",
    id = 446046, badge = "503619", published = "7/6/2024 11:47:06 PM", modified = "7/6/2024 11:47:06 PM",
    trigger = MenuID() == 5 && MedleyID() == 6 && GadgetCheat() == 0 && InGame() && prev(TourneysUnlocked()) == 6 &&
              TourneysUnlocked() == 7
)

achievement(
    title = "Jake's Gladiator Attack!", points = 0, type="progression",
    description = "Clear \"VS Jake 2\" in Story Mode",
    id = 446047, badge = "503621", published = "7/6/2024 11:47:06 PM", modified = "7/6/2024 11:47:06 PM",
    trigger = MenuID() == 5 && MedleyID() == 7 && GadgetCheat() == 0 && InGame() && prev(TourneysUnlocked()) == 7 &&
              TourneysUnlocked() == 8
)

achievement(
    title = "The Semi Finals! (Part 2)", points = 0, type="progression",
    description = "Clear \"Semi Final 2\" in Story Mode",
    id = 446048, badge = "503622", published = "7/6/2024 11:47:06 PM", modified = "7/6/2024 11:47:06 PM",
    trigger = MenuID() == 5 && MedleyID() == 8 && GadgetCheat() == 0 && InGame() && prev(TourneysUnlocked()) == 8 &&
              TourneysUnlocked() == 9
)

achievement(
    title = "The Finals!", points = 0, type="progression",
    description = "Clear \"Final 1\" in Story Mode",
    id = 446049, badge = "503623", published = "7/6/2024 11:47:07 PM", modified = "7/6/2024 11:47:07 PM",
    trigger = MenuID() == 5 && MedleyID() == 9 && GadgetCheat() == 0 && InGame() && prev(TourneysUnlocked()) == 9 &&
              TourneysUnlocked() == 10
)

achievement(
    title = "Second Specter Showdown!", points = 0, type="progression",
    description = "Clear \"VS Specter 2\" in Story Mode",
    id = 446044, badge = "503617", published = "7/6/2024 11:47:05 PM", modified = "7/6/2024 11:47:05 PM",
    trigger = MenuID() == 5 && MedleyID() == 10 && GadgetCheat() == 0 && InGame() &&
              prev(TourneysUnlocked()) == 10 && TourneysUnlocked() == 11
)

achievement(
    title = "The... Virus Tech Tournament?!?", points = 0, type="progression",
    description = "Clear \"Final 2\" in Story Mode",
    id = 446050, badge = "503624", published = "7/6/2024 11:47:07 PM", modified = "7/6/2024 11:47:07 PM",
    trigger = MenuID() == 5 && MedleyID() == 11 && GadgetCheat() == 0 && InGame() &&
              prev(TourneysUnlocked()) == 11 && TourneysUnlocked() == 12
)

achievement(
    title = "Megabreak Maddness", points = 0, type="progression",
    description = "Clear all Megabreak tournaments in Story Mode",
    id = 446051, badge = "503625", published = "7/6/2024 11:47:07 PM", modified = "7/6/2024 11:47:07 PM",
    trigger = MenuID() == 5 && MedleyID() == 15 && GadgetCheat() == 0 && InGame() &&
              prev(TourneysUnlocked()) == 15 && TourneysUnlocked() == 16
)

achievement(
    title = "The PIPOTRON Problem", points = 0, type="progression",
    description = "Clear \"VS Pipotron\" in Story Mode",
    id = 446052, badge = "503626", published = "7/6/2024 11:47:07 PM", modified = "7/6/2024 11:47:07 PM",
    trigger = MenuID() == 5 && MedleyID() == 16 && GadgetCheat() == 0 && InGame() &&
              prev(TourneysUnlocked()) == 16 && TourneysUnlocked() == 17
)

achievement(
    title = "Gigabreak Games", points = 0, type="progression",
    description = "Clear all Gigabreak tournaments in Story Mode",
    id = 446053, badge = "503627", published = "7/6/2024 11:47:08 PM", modified = "7/6/2024 11:47:08 PM",
    trigger = MenuID() == 5 && MedleyID() == 20 && GadgetCheat() == 0 && InGame() &&
              prev(TourneysUnlocked()) == 20 && TourneysUnlocked() == 21
)

achievement(
    title = "Dark Jake's Chariot Attack!", points = 0, type="progression",
    description = "Clear \"VS Jake 3\" in Story Mode",
    id = 446054, badge = "503628", published = "7/6/2024 11:47:08 PM", modified = "7/6/2024 11:50:14 PM",
    trigger = MenuID() == 5 && MedleyID() == 21 && GadgetCheat() == 0 && InGame() &&
              prev(TourneysUnlocked()) == 21 && TourneysUnlocked() == 22
)

achievement(
    title = "Terabreak Terrors", points = 0, type="progression",
    description = "Clear all Terabreak tournaments in Story Mode",
    id = 446055, badge = "503629", published = "7/6/2024 11:47:08 PM", modified = "7/6/2024 11:47:08 PM",
    trigger = MenuID() == 5 && MedleyID() == 25 && GadgetCheat() == 0 && InGame() &&
              prev(TourneysUnlocked()) == 25 && TourneysUnlocked() == 26
)

achievement(
    title = "Dark Specter's Final Showdown", points = 0, type="progression",
    description = "Clear \"VS Specter 3\" in Story Mode",
    id = 446056, badge = "503630", published = "7/6/2024 11:47:09 PM", modified = "7/6/2024 11:47:09 PM",
    trigger = MenuID() == 5 && MedleyID() == 26 && GadgetCheat() == 0 && InGame() &&
              prev(TourneysUnlocked()) == 26 && TourneysUnlocked() == 27
)

achievement(
    title = "Nano Grid Nonsense", points = 0, type="progression",
    description = "Clear all Nano Grid tournaments in Story Mode",
    id = 446057, badge = "503631", published = "7/6/2024 11:47:09 PM", modified = "7/6/2024 11:47:09 PM",
    trigger = MenuID() == 5 && MedleyID() == 30 && GadgetCheat() == 0 && InGame() &&
              prev(TourneysUnlocked()) == 30 && TourneysUnlocked() == 31
)

achievement(
    title = "High-Tech-Tournament Arc END", points = 0, type="win_condition",
    description = "Clear \"VS Grid Core\" in Story Mode",
    id = 446058, badge = "504163", published = "7/6/2024 11:47:09 PM", modified = "7/6/2024 11:47:09 PM",
    trigger = MenuID() == 5 && MedleyID() == 31 && GadgetCheat() == 0 && InGame() && prev(GridCoreStatus()) == 0 &&
              GridCoreStatus() == 1
)




/*
achievement(
    title = "FANCLUB TESTING", points = 1,
    description = "get all the prizes in stunclubs 1 [WILL NOT STAY JUST TESTING]",
    id = 445603, badge = "503111", published = "7/5/2024 8:28:54 AM", modified = "7/5/2024 8:29:14 AM",
    trigger = MenuID() == 5 && TourneyID() == 0 && InGame() && Result() == 0 &&
              (((prev(byte(byte(0x51B554) * 1024 + 0x51B560)) == 0) ||
                prev(byte(byte(0x51B554) * 1024 + 0x51B561)) == 0 || prev(byte(byte(0x51B554) * 1024 + 0x51B562)) == 0 &&
                (byte(byte(0x51B554) * 1024 + 0x51B560) >= 1) && byte(byte(0x51B554) * 1024 + 0x51B561) >= 1 &&
                byte(byte(0x51B554) * 1024 + 0x51B562) >= 1) ||
               ((prev(byte(byte(0x51B555) * 1024 + 0x51B560)) == 0) ||
                prev(byte(byte(0x51B555) * 1024 + 0x51B561)) == 0 || prev(byte(byte(0x51B555) * 1024 + 0x51B562)) == 0 &&
                (byte(byte(0x51B555) * 1024 + 0x51B560) >= 1) && byte(byte(0x51B555) * 1024 + 0x51B561) >= 1 &&
                byte(byte(0x51B555) * 1024 + 0x51B562) >= 1))
)

achievement(
    title = "VS Tournament Win Template", points = 1,
    description = "SF 2 or Current Tournament ID 0x018 to check",
    trigger = never(InGame() != 1) && MenuID() == 8 &&
              ((unless(P1_COM() != 1) && MedleyID() == 26 && P1_POINTS() >= P2_POINTS() && P1_POINTS() >= P3_POINTS() &&
                P1_POINTS() >= P4_POINTS() && prior(Result()) == 1 && Result() == 0 && dword(0x189E69C) == 1279741513 &&
                dword(0x189E6A0) == 1195531333 && dword(0x189E6A4) == 775369549 && dword(0x189E6A8) == 995380809 &&
                P1_CHAR() == 14) ||
               (unless(P2_COM() != 1) && MedleyID() == 26 && P2_POINTS() >= P1_POINTS() && P2_POINTS() >= P3_POINTS() &&
                P2_POINTS() >= P4_POINTS() && prior(Result()) == 1 && Result() == 0 && dword(0x189E69C) == 1279741513 &&
                dword(0x189E6A0) == 1195531333 && dword(0x189E6A4) == 775369549 && dword(0x189E6A8) == 995380809) ||
               (unless(P3_COM() != 1) && MedleyID() == 26 && P3_POINTS() >= P1_POINTS() && P3_POINTS() >= P2_POINTS() &&
                P3_POINTS() >= P4_POINTS() && prior(Result()) == 1 && Result() == 0 && dword(0x189E69C) == 1279741513 &&
                dword(0x189E6A0) == 1195531333 && dword(0x189E6A4) == 775369549 && dword(0x189E6A8) == 995380809) ||
               (unless(P4_COM() != 1) && MedleyID() == 26 && P4_POINTS() >= P1_POINTS() && P4_POINTS() >= P2_POINTS() &&
                P4_POINTS() >= P3_POINTS() && prior(Result()) == 1 && Result() == 0 && dword(0x189E69C) == 1279741513 &&
                dword(0x189E6A0) == 1195531333 && dword(0x189E6A4) == 775369549 && dword(0x189E6A8) == 995380809))
)

achievement(
    title = "Second Round's Fan Favorite I ", points = 1,
    description = "Get all bonus items in \"2nd Round 1\" in Story Mode",
    trigger = never(InGame() != 1) && MenuID() == 5 && dword(0x189E6A0) == 1296515676 && dword(0x189E6A4) == 1227765042 &&
              dword(0x189E6A8) == 825971790 && prior(Result()) == 1 && Result() == 0 && GadgetCheat() == 0 &&
              ((unless((MenuID() != 4 && MenuID() != 5)) &&
                ((prev(byte(PlayerPointer1() * 1024 + 0x51B584)) / Mechabo2Gift1()) + (prev(byte(PlayerPointer1() * 1024
                + 0x51B585)) / Mechabo2Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B586)) / Mechabo2Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B588)) / Flyer2Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B589)) / Flyer2Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B58A)) / Flyer2Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B58C)) / Sling2Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B58D)) / Sling2Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B58E)) / Sling2Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B590)) / Tank1Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B591)) / Tank1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B592)) / Tank1Gift3())) < 12 &&
                measured(((byte(PlayerPointer1() * 1024 + 0x51B584) / Dash1Gift1()) + (byte(PlayerPointer1() * 1024 +
                    0x51B585) / Dash1Gift2()) + (byte(PlayerPointer1() * 1024 + 0x51B586) / Dash1Gift3()) +
                    (byte(PlayerPointer1() * 1024 + 0x51B588) / RC1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B589) /
                    RC1Gift2()) + (byte(PlayerPointer1() * 1024 + 0x51B58A) / RC1Gift3()) + (byte(PlayerPointer1() * 1024 +
                    0x51B58C) / Water1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B58D) / Water1Gift2()) +
                    (byte(PlayerPointer1() * 1024 + 0x51B58E) / Water1Gift3()) + (byte(PlayerPointer1() * 1024 + 0x51B590) /
                    Tank1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B591) / Tank1Gift2()) + (byte(PlayerPointer1() *
                    1024 + 0x51B592) / Tank1Gift3())) == 12
                )) ||
               (unless((MenuID() != 4 && MenuID() != 5)) &&
                ((prev(byte(PlayerPointer2() * 1024 + 0x51B584)) / Dash1Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B585)) / Dash1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B586)) / Dash1Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B588)) / RC1Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B589)) / RC1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B58A)) / RC1Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B58C)) / Water1Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B58D)) / Water1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B58E)) / Water1Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B590)) / Tank1Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B591)) / Tank1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B592)) / Tank1Gift3())) < 12 &&
                measured(((byte(PlayerPointer2() * 1024 + 0x51B584) / Dash1Gift1()) + (byte(PlayerPointer2() * 1024 +
                    0x51B585) / Dash1Gift2()) + (byte(PlayerPointer2() * 1024 + 0x51B586) / Dash1Gift3()) +
                    (byte(PlayerPointer2() * 1024 + 0x51B588) / RC1Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B589) /
                    RC1Gift2()) + (byte(PlayerPointer2() * 1024 + 0x51B58A) / RC1Gift3()) + (byte(PlayerPointer2() * 1024 +
                    0x51B58C) / Water1Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B58D) / Water1Gift2()) +
                    (byte(PlayerPointer2() * 1024 + 0x51B58E) / Water1Gift3()) + (byte(PlayerPointer2() * 1024 + 0x51B590) /
                    Tank1Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B591) / Tank1Gift2()) + (byte(PlayerPointer2() *
                    1024 + 0x51B592) / Tank1Gift3())) == 12
                )))
)

achievement(
    title = "Second Round's Fan Favorite II  ", points = 1,
    description = "Get all bonus items in \"2nd Round 2\" in Story Mode",
    trigger = never(InGame() != 1) && MenuID() == 5 && dword(0x189E6A0) == 1296515676 && dword(0x189E6A4) == 1227765042 &&
              dword(0x189E6A8) == 825971790 && prior(Result()) == 1 && Result() == 0 && GadgetCheat() == 0 &&
              (always_false() || (unless((MenuID() != 4 && MenuID() != 5)) &&
                ((prev(byte(PlayerPointer1() * 1024 + 0x51B598)) / Dash1Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B599)) / Dash1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B59A)) / Dash1Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B59C)) / RC1Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B59D)) / RC1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B59E)) / RC1Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B5A0)) / Water1Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B5A1)) / Water1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B5A2)) / Water1Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B5A4)) / Tank1Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B5A5)) / Tank1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B5A6)) / Tank1Gift3())) < 12 &&
                measured(((byte(PlayerPointer1() * 1024 + 0x51B598) / Dash1Gift1()) + (byte(PlayerPointer1() * 1024 +
                    0x51B599) / Dash1Gift2()) + (byte(PlayerPointer1() * 1024 + 0x51B59A) / Dash1Gift3()) +
                    (byte(PlayerPointer1() * 1024 + 0x51B59C) / RC1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B59D) /
                    RC1Gift2()) + (byte(PlayerPointer1() * 1024 + 0x51B59E) / RC1Gift3()) + (byte(PlayerPointer1() * 1024 +
                    0x51B5A0) / Water1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B5A1) / Water1Gift2()) +
                    (byte(PlayerPointer1() * 1024 + 0x51B5A2) / Water1Gift3()) + (byte(PlayerPointer1() * 1024 + 0x51B5A4) /
                    Tank1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B5A5) / Tank1Gift2()) + (byte(PlayerPointer1() *
                    1024 + 0x51B5A6) / Tank1Gift3())) == 12
                )))
)


achievement(
    title = "First Place Stunclubs 1", points = 1,
    description = "Get First place in stunclubs 1",
    id = 446790, badge = "504188", published = "7/8/2024 6:01:12 AM", modified = "10/31/2024 4:51:50 AM",
    trigger = never(InGame() != 1) && MenuID() == 5 &&
              ((unless(P1_COM() != 1) && TourneyID() == 0 && prev(P1_POINTS()) != P1_POINTS() &&
                P1_POINTS() >= P2_POINTS() && P1_POINTS() >= P3_POINTS() && P1_POINTS() >= P4_POINTS() &&
                prior(Result()) == 1 && Result() == 0 && dword(0x189E69C) == 1296257092 &&
                dword(0x189E6A0) == 1296515676 && dword(0x189E6A4) == 1227765042 && dword(0x189E6A8) == 825971790) ||
               (unless(P2_COM() != 1) && TourneyID() == 0 && prev(P2_POINTS()) != P2_POINTS() &&
                P2_POINTS() >= P1_POINTS() && P2_POINTS() >= P3_POINTS() && P2_POINTS() >= P4_POINTS() &&
                prior(Result()) == 1 && Result() == 0 && dword(0x189E69C) == 1296257092 &&
                dword(0x189E6A0) == 1296515676 && dword(0x189E6A4) == 1227765042 && dword(0x189E6A8) == 825971790))
)




achievement(
    title = "Fan Favorite Boss Fighter", points = 1,
    description = "Get all bonus items in each boss stage in Story Mode",
    id = 475273, badge = "539133", published = "11/2/2024 6:42:22 AM", modified = "11/7/2024 5:21:48 PM",
    trigger = never(InGame() != 1) && MenuID() == 5 && dword(0x189E6A0) == 1296515676 && dword(0x189E6A4) == 776222002 &&
              dword(0x189E6A8) == 995380809 && prior(BossResult()) == 0 && BossResult() == 1 &&
              ((unless((MenuID() != 4 && MenuID() != 5)) &&
                ((prev(byte(PlayerPointer1() * 1024 + 0x51B570)) / Hiroki1Gift1()) + (prev(byte(PlayerPointer1() * 1024
                + 0x51B571)) / Hiroki1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B572)) / Hiroki1Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B594)) / Spector1Gift1()) + (prev(byte(PlayerPointer1() * 1024
                + 0x51B595)) / Spector1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B596)) / Spector1Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B5B4)) / Hiroki2Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B5B5)) / Hiroki2Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B5B6)) / Hiroki2Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B5D0)) / Spector1Gift1()) + (prev(byte(PlayerPointer1() * 1024
                + 0x51B5D1)) / Spector1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B5D2)) / Spector1Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B5F0)) / PipotronGift1()) + (prev(byte(PlayerPointer1() * 1024
                + 0x51B5F1)) / PipotronGift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B5F2)) / PipotronGift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B604)) / Hiroki3Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B605)) / Hiroki3Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B606)) / Hiroki3Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B618)) / Spector3Gift1()) + (prev(byte(PlayerPointer1() * 1024
                + 0x51B619)) / Spector3Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B61A)) / Spector3Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B62C)) / GridGift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B62D)) / GridGift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B62E)) / GridGift3())) < 24 &&
                measured(((byte(PlayerPointer1() * 1024 + 0x51B570) / Hiroki1Gift1()) + (byte(PlayerPointer1() * 1024 +
                    0x51B571) / Hiroki1Gift2()) + (byte(PlayerPointer1() * 1024 + 0x51B572) / Hiroki1Gift3()) +
                    (byte(PlayerPointer1() * 1024 + 0x51B594) / Spector1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B595)
                    / Spector1Gift2()) + (byte(PlayerPointer1() * 1024 + 0x51B596) / Spector1Gift3()) +
                    (byte(PlayerPointer1() * 1024 + 0x51B5B4) / Hiroki2Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B5B5)
                    / Hiroki2Gift2()) + (byte(PlayerPointer1() * 1024 + 0x51B5B6) / Hiroki2Gift3()) + (byte(PlayerPointer1()
                    * 1024 + 0x51B5D0) / Spector1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B5D1) / Spector1Gift2()) +
                    (byte(PlayerPointer1() * 1024 + 0x51B5D2) / Spector1Gift3()) + (byte(PlayerPointer1() * 1024 + 0x51B5F0)
                    / PipotronGift1()) + (byte(PlayerPointer1() * 1024 + 0x51B5F1) / PipotronGift2()) +
                    (byte(PlayerPointer1() * 1024 + 0x51B5F2) / PipotronGift3()) + (byte(PlayerPointer1() * 1024 + 0x51B604)
                    / Hiroki3Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B605) / Hiroki3Gift2()) + (byte(PlayerPointer1()
                    * 1024 + 0x51B606) / Hiroki3Gift3()) + (byte(PlayerPointer1() * 1024 + 0x51B618) / Spector3Gift1()) +
                    (byte(byte(0x51B554) * 1024 + 0x51B619) / Spector3Gift2()) + (byte(PlayerPointer1() * 1024 + 0x51B61A) /
                    Spector3Gift3()) + (byte(byte(0x51B554) * 1024 + 0x51B62C) / GridGift1()) + (byte(PlayerPointer1() *
                    1024 + 0x51B62D) / GridGift2()) + (byte(PlayerPointer1() * 1024 + 0x51B62E) / GridGift3())) == 24
                )) ||
               (unless((MenuID() != 4 && MenuID() != 5)) &&
                ((prev(byte(PlayerPointer2() * 1024 + 0x51B570)) / Hiroki1Gift1()) + (prev(byte(PlayerPointer2() * 1024
                + 0x51B571)) / Hiroki1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B572)) / Hiroki1Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B594)) / Spector1Gift1()) + (prev(byte(PlayerPointer2() * 1024
                + 0x51B595)) / Spector1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B596)) / Spector1Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B5B4)) / Hiroki2Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B5B5)) / Hiroki2Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B5B6)) / Hiroki2Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B5D0)) / Spector1Gift1()) + (prev(byte(PlayerPointer2() * 1024
                + 0x51B5D1)) / Spector1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B5D2)) / Spector1Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B5F0)) / PipotronGift1()) + (prev(byte(PlayerPointer2() * 1024
                + 0x51B5F1)) / PipotronGift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B5F2)) / PipotronGift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B604)) / Hiroki3Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B605)) / Hiroki3Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B606)) / Hiroki3Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B618)) / Spector3Gift1()) + (prev(byte(PlayerPointer2() * 1024
                + 0x51B619)) / Spector3Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B61A)) / Spector3Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B62C)) / GridGift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B62D)) / GridGift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B62E)) / GridGift3())) < 24 &&
                measured(((byte(PlayerPointer2() * 1024 + 0x51B570) / Hiroki1Gift1()) + (byte(PlayerPointer2() * 1024 +
                    0x51B571) / Hiroki1Gift2()) + (byte(PlayerPointer2() * 1024 + 0x51B572) / Hiroki1Gift3()) +
                    (byte(PlayerPointer2() * 1024 + 0x51B594) / Spector1Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B595)
                    / Spector1Gift2()) + (byte(PlayerPointer2() * 1024 + 0x51B596) / Spector1Gift3()) +
                    (byte(PlayerPointer2() * 1024 + 0x51B5B4) / Hiroki2Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B5B5)
                    / Hiroki2Gift2()) + (byte(PlayerPointer2() * 1024 + 0x51B5B6) / Hiroki2Gift3()) + (byte(PlayerPointer2()
                    * 1024 + 0x51B5D0) / Spector1Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B5D1) / Spector1Gift2()) +
                    (byte(PlayerPointer2() * 1024 + 0x51B5D2) / Spector1Gift3()) + (byte(PlayerPointer2() * 1024 + 0x51B5F0)
                    / PipotronGift1()) + (byte(PlayerPointer2() * 1024 + 0x51B5F1) / PipotronGift2()) +
                    (byte(PlayerPointer2() * 1024 + 0x51B5F2) / PipotronGift3()) + (byte(PlayerPointer2() * 1024 + 0x51B604)
                    / Hiroki3Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B605) / Hiroki3Gift2()) + (byte(PlayerPointer2()
                    * 1024 + 0x51B606) / Hiroki3Gift3()) + (byte(PlayerPointer2() * 1024 + 0x51B618) / Spector3Gift1()) +
                    (byte(PlayerPointer2() * 1024 + 0x51B619) / Spector3Gift2()) + (byte(PlayerPointer2() * 1024 + 0x51B61A)
                    / Spector3Gift3()) + (byte(PlayerPointer2() * 1024 + 0x51B62C) / GridGift1()) + (byte(PlayerPointer2() *
                    1024 + 0x51B62D) / GridGift2()) + (byte(PlayerPointer2() * 1024 + 0x51B62E) / GridGift3())) == 24
                )))
)

achievement(
    title = "First Round's Fan Favorite II", points = 1,
    description = "Get all bonus items in \"1st Round 2\" in Story Mode",
    id = 476505, badge = "540738", published = "11/6/2024 12:33:29 AM", modified = "11/7/2024 5:14:11 PM",
    trigger = never(InGame() != 1) && MenuID() == 5 && dword(0x189E6A0) == 1296515676 && dword(0x189E6A4) == 1227765042 &&
              dword(0x189E6A8) == 825971790 && prior(Result()) == 1 && Result() == 0 && GadgetCheat() == 0 &&
              ((unless((MenuID() != 4 && MenuID() != 5)) &&
                ((prev(byte(PlayerPointer1() * 1024 + 0x51B574)) / Dash1Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B575)) / Dash1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B576)) / Dash1Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B578)) / RC1Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B579)) / RC1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B57A)) / RC1Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B57C)) / Water1Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B57D)) / Water1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B57E)) / Water1Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B580)) / Tank1Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B581)) / Tank1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B582)) / Tank1Gift3())) < 12 &&
                measured(((byte(PlayerPointer1() * 1024 + 0x51B574) / Dash1Gift1()) + (byte(PlayerPointer1() * 1024 +
                    0x51B575) / Dash1Gift2()) + (byte(PlayerPointer1() * 1024 + 0x51B576) / Dash1Gift3()) +
                    (byte(PlayerPointer1() * 1024 + 0x51B578) / RC1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B579) /
                    RC1Gift2()) + (byte(PlayerPointer1() * 1024 + 0x51B57A) / RC1Gift3()) + (byte(PlayerPointer1() * 1024 +
                    0x51B57C) / Water1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B57D) / Water1Gift2()) +
                    (byte(PlayerPointer1() * 1024 + 0x51B57E) / Water1Gift3()) + (byte(PlayerPointer1() * 1024 + 0x51B580) /
                    Tank1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B581) / Tank1Gift2()) + (byte(PlayerPointer1() *
                    1024 + 0x51B582) / Tank1Gift3())) == 12
                )) ||
               (unless((MenuID() != 4 && MenuID() != 5)) &&
                ((prev(byte(PlayerPointer2() * 1024 + 0x51B574)) / Dash1Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B575)) / Dash1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B576)) / Dash1Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B578)) / RC1Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B579)) / RC1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B57A)) / RC1Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B57C)) / Water1Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B57D)) / Water1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B57E)) / Water1Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B580)) / Tank1Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B581)) / Tank1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B582)) / Tank1Gift3())) < 12 &&
                measured(((byte(PlayerPointer2() * 1024 + 0x51B574) / Dash1Gift1()) + (byte(PlayerPointer2() * 1024 +
                    0x51B575) / Dash1Gift2()) + (byte(PlayerPointer2() * 1024 + 0x51B576) / Dash1Gift3()) +
                    (byte(PlayerPointer2() * 1024 + 0x51B578) / RC1Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B579) /
                    RC1Gift2()) + (byte(PlayerPointer2() * 1024 + 0x51B57A) / RC1Gift3()) + (byte(PlayerPointer2() * 1024 +
                    0x51B57C) / Water1Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B57D) / Water1Gift2()) +
                    (byte(PlayerPointer2() * 1024 + 0x51B57E) / Water1Gift3()) + (byte(PlayerPointer2() * 1024 + 0x51B580) /
                    Tank1Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B581) / Tank1Gift2()) + (byte(PlayerPointer2() *
                    1024 + 0x51B582) / Tank1Gift3())) == 12
                )))
)



achievement(
    title = "First Round's Fan Favorite I", points = 1,
    description = "Get all bonus items in \"1st Round 1\" in Story Mode",
    id = 445810, badge = "540737", published = "7/5/2024 11:36:02 PM", modified = "11/7/2024 5:14:06 PM",
    trigger = never(InGame() != 1) && MenuID() == 5 && dword(0x189E6A0) == 1296515676 && dword(0x189E6A4) == 1227765042 &&
              dword(0x189E6A8) == 825971790 && prior(Result()) == 1 && Result() == 0 &&
              ((unless((MenuID() != 4 && MenuID() != 5)) &&
                ((prev(byte(PlayerPointer1() * 1024 + 0x51B560)) / Mechabo1Gift1()) + (prev(byte(PlayerPointer1() * 1024
                + 0x51B561)) / Mechabo1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B562)) / Mechabo1Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B564)) / Flyer1Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B565)) / Flyer1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B566)) / Flyer1Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B568)) / Sling1Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B569)) / Sling1Gift2()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B56A)) / Sling1Gift3()) +
                (prev(byte(PlayerPointer1() * 1024 + 0x51B56C)) / Boat1Gift1()) + (prev(byte(PlayerPointer1() * 1024 +
                0x51B56D)) / Boat2Gift1()) + (prev(byte(PlayerPointer1() * 1024 + 0x51B56E)) / Boat3Gift1())) < 12 &&
                measured(((byte(PlayerPointer1() * 1024 + 0x51B560) / Mechabo1Gift1()) + (byte(PlayerPointer1() * 1024 +
                    0x51B561) / Mechabo1Gift2()) + (byte(PlayerPointer1() * 1024 + 0x51B562) / Mechabo1Gift3()) +
                    (byte(PlayerPointer1() * 1024 + 0x51B564) / Flyer1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B565) /
                    Flyer1Gift2()) + (byte(PlayerPointer1() * 1024 + 0x51B566) / Flyer1Gift3()) + (byte(PlayerPointer1() *
                    1024 + 0x51B568) / Sling1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B569) / Sling1Gift2()) +
                    (byte(PlayerPointer1() * 1024 + 0x51B56A) / Sling1Gift3()) + (byte(PlayerPointer1() * 1024 + 0x51B56C) /
                    Boat1Gift1()) + (byte(PlayerPointer1() * 1024 + 0x51B56D) / Boat2Gift1()) + (byte(PlayerPointer1() *
                    1024 + 0x51B56E) / Boat3Gift1())) == 12
                )) ||
               (unless((MenuID() != 4 && MenuID() != 5)) &&
                ((prev(byte(PlayerPointer2() * 1024 + 0x51B560)) / Mechabo1Gift1()) + (prev(byte(PlayerPointer2() * 1024
                + 0x51B561)) / Mechabo1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B562)) / Mechabo1Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B564)) / Flyer1Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B565)) / Flyer1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B566)) / Flyer1Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B568)) / Sling1Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B569)) / Sling1Gift2()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B56A)) / Sling1Gift3()) +
                (prev(byte(PlayerPointer2() * 1024 + 0x51B56C)) / Boat1Gift1()) + (prev(byte(PlayerPointer2() * 1024 +
                0x51B56D)) / Boat2Gift1()) + (prev(byte(PlayerPointer2() * 1024 + 0x51B56E)) / Boat3Gift1())) < 12 &&
                measured(((byte(PlayerPointer2() * 1024 + 0x51B560) / Mechabo1Gift1()) + (byte(PlayerPointer2() * 1024 +
                    0x51B561) / Mechabo1Gift2()) + (byte(PlayerPointer2() * 1024 + 0x51B562) / Mechabo1Gift3()) +
                    (byte(PlayerPointer2() * 1024 + 0x51B564) / Flyer1Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B565) /
                    Flyer1Gift2()) + (byte(PlayerPointer2() * 1024 + 0x51B566) / Flyer1Gift3()) + (byte(PlayerPointer2() *
                    1024 + 0x51B568) / Sling1Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B569) / Sling1Gift2()) +
                    (byte(PlayerPointer2() * 1024 + 0x51B56A) / Sling1Gift3()) + (byte(PlayerPointer2() * 1024 + 0x51B56C) /
                    Boat1Gift1()) + (byte(PlayerPointer2() * 1024 + 0x51B56D) / Boat2Gift1()) + (byte(PlayerPointer2() *
                    1024 + 0x51B56E) / Boat3Gift1())) == 12
                )))
)





*/

