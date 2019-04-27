# Life is currency

It's a survival platformer with aspects of RPG. Main point is to survive threats of being killed by mafia, 
while trying to find good enaugh weapon to beat them and therefore win the game.

## Lore

You are new citizen of Gallet City. There are bad guys called OgLedvica - Mafia, which kidnapped you on the first day and
gave you an offer which you couldn't refuse. In order to survive a day, you have to supply them human organs until 10 PM.

So it's up to you how will you manage to survive, but one can't kill mafia with no weapon..

## Dev

__Probability__:
* Plays important factor in deciding how Mafia treats player
* Can be influenced from __reputation__ (player's attribute, see player details for explanation)

__Player__:
* Attributes:
  1. reputation - when player kills more and more people his reputation will increase. 
  Higher reputation means higher trust from mafia. For example: If player's reputation is very high maifa might not 
  even check the quality of supplied organs - therefore player might give them bad lungs from smoker.
  On the other hand, higher reputation means lower trust from other people in the town. If players reputation is very high,
  people can attack him and try to kill him.
* Can kill people and take dropped organ(s)
* In order to win the game has to find __the gun__ and shoot mafia.
* Has to survive without getting killed by mafia and other humans.
* Needs to supply organs from other humans to mafia until 10 PM. If player fails - mafia might(probability) kill him => game over.

__Other players (AI)__:
* Different kinds(mafia, healthy, smoker, alcoholic,..), for example smoker has bad lungs and alcoholic will have bad kidneys.
If mafia finds out(probability) player supplied them bad quality organs, they can demand(probability) more organs next day.
* Each AI has its weekneses. For example: smoker will get tiered really fast and will be easier to kill
* Maifa is special AI which can not be damaged and therefore killed, unless they are shoot with __the gun__ from player.

__Mafia__:
* Demands organs until 10 PM each day

__Weapons__:

| Type | Hits to kill | Can kill mafia
| --- | --- | --- |
| bare hands | 10 | no |
| knife | 6 | no |
| sword | 2 | no |
| __the gun__ | 1 | yes |

__The gun__:
* Special weapon
* Can be found by player in order to kill mafia

## If enaugh time 
* Player can make friends which can help getting organs from other and can defend player
