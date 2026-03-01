# Videogame-Database-Project 🎮
Database made for ITC341 - Introduction to Database Systems <br><br>
Database for a digital distribution site similar to Steam or Origin that needs to keep track of the games available on its storefront.
This database will allow them to know which games are considered hot or popular due to the game's sales and revenue.
It will also allow the company to know who to advertise these games by keeping a log on the game's players and demographics. <br><br>
This project utilizes an Oracle SQLPlus enviorment  <br><br>

# Game Database includes the following tables:

**Game Table** - provides information on the game (ID, Name, Release Date, Genre, DeveloperID, and, ESRB Rating, PlatformID) 

**Game Categories** - (Category ID, Game ID, Category Name) 

**Game Rating Table** - that provides the game’s overall rating (Rating ID, GameID, Rating (1-10)) 

**Developer Table** - (Developer ID, Name, Founded Year, Country) 

**Game Platform Table** - (Platform ID, Platform name: Console, Handheld, PC, Console+PC, Console+Handheld, PC+Handheld, Console+PC+Handheld)  

**Game Sales** - (Sale ID, Game ID, Units sold, Revenue) 

**Player Table** - (player ID, Name, Age, Username, Country, Games Played, Total Hours Played) 

**Games Played** - (Ownership ID, # of games played, Player ID) <br><br>

# Database queries 🔎
- Top 3 most owned games
- Top 5 games with the lowest rating
- Games ran on the Playstation 4
- Top 2 Games made by Blizzard Entertainment that have made the most revenue
- Top 5 Games by revenue
- The game made by Epic Games that have sold the most units
- Top 5 Players with the most hours played in the USA
- Oldest Game Developers
- Games Released After 2019
- Average Game Rating by Developer
- Total Games per Platform
<br><br>
**This project uses AI-Generated sample data requested by my professor**
