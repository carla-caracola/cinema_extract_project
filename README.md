
# 🎬 Cinem Extract 📽️

## 📝 Project statement
The streaming platform BHO is constantly looking to improve the quality of its content and the satisfaction of its users. Our project consists of applying data analysis techniques to identify which are the most popular and best rated movies and short films from 2010 to date. This will help BHO make informed decisions about what content to promote and highlight on its platform.


## ⚙ Technologies

- MySQL 
- MySQL Workbench
- Visual Studio Code
- Python
- Jupyter Notebook

## 🛠 Installation


1. Install **Python**:
   - Download and install Python from [Python.org](https://www.python.org/downloads/).
   - Make sure to check the option to add Python to your PATH during the installation.

2. Install **Jupyter Notebook**:
   - Open a terminal or command prompt and run the following command to install Jupyter Notebook:
     ```bash
     pip install notebook
     ```
3. Install **Visual Studio Code**:
   - Download and install Visual Studio Code from [Visual Studio Code](https://code.visualstudio.com/).

4. Install Visual Studio Code Extensions:
   - Open Visual Studio Code.
   - Go to the Extensions view by clicking on the square icon in the sidebar or pressing `Ctrl+Shift+X`.
   - Search for and install the following extensions:
     - Python (by Microsoft)
     - Jupyter (by Microsoft)

5. Install **MySQL** and **MySQL Workbench**:
- Download and install MySQL from [MySQL Community Downloads](https://dev.mysql.com/downloads/mysql/).
- Download and install [MySQL Workbench](https://dev.mysql.com/downloads/workbench/).

6. Install **Cinem Extract BDD**
- Go to the "File" menu at the top and select "Run SQL Script".
- Navigate to the location of the `cinem_extract.sql`.
- Select the file and click "Open".
- Click "Run" to start the import process.

7. Execute queries:
- Open *MySQL Workbench* and connect to the database.
- Open the `queries_cinema_extract.sql` file and run the SQL queries to get results.

    
## 📋 Phases

### Phase 1: Data Extraction from MoviesDataset API
[MoviesDataset API](https://rapidapi.com/SAdrian/api/moviesdatabase)
Make requests to this API and extract relevant information about the movies. Specifically, you will have to extract the following information:
- Type (if it is a short or film).
- Name of the movie or short.
- Year of release of the movie or short.
- Month of release of the movie or short.
- Movie ID.
- Genre.
### Phase 2: Extracting Movie Details with Selenium
Use the web automation tool [Selenium](https://www.selenium.dev/documentation/) to browse movie review websites, [IMDB](https://www.imdb.com/) and [Rotten Tomatoes](https://www.rottentomatoes.com/), and extract:
- IMDB score (if available).
- Rotten Tomatoes score (Tomatometer).
- Director (director(s) of each movie).
- Screenwriter(s) (of each movie).
- Plot.
- Duration (in minutes).
- Movie name
### Phase 3: Extracting Actor Details with Selenium
Extract the following information from the top 10 actors of each of the movies extracted in phase 1 using Selenium (from the page and [IMDB](https://www.imdb.com/)):
- Name.
- Birth year.
- What are they known for?
- What do they do?
- Awards.
### Phase 4: Extracting Oscar Awards Tables with Beautiful Soup
Work with the Beautiful Soup library to extract relevant information from the [Oscar Awards tables](https://es.wikipedia.org/wiki/Premios_%C3%93scar) since 2000:
- Date of the ceremony.
- Best film.
- Best director.
- Best actor.
- Best actress.
### Phase 5: Creating a Database
Using SQL you must think about the structure that the database must have to store all the information collected and create all the tables and connections between them.
### Phase 6: Inserting Data into the Database
Insert all the data into the database designed in the previous step.
### Phase 7: Performing Queries to Obtain Information
With the data stored in the database, you must perform SQL queries to retrieve specific information. The questions you must answer are:
- What genres have received the most Oscars?
- What genre is the highest rated on IMDB?
- In which year were the most movies released?
- In which year were the most short films released?
- What is the highest rated movie on IMDB?
- Which actor/actress has received the most awards?
- Is there an actor/actress who has received more than one Oscar?


## 🚀 About Women In Films
Women in films is a fictitious company formed by three students from the Adalab Data Analysis Bootcamp who work together to carry out the CinemExtract project from Module 2 of the Bootcamp.
Thank you for reading us and we hope you find our project useful!

## ✒ Authors
- [Beatriz Díaz](https://github.com/BeaDataArtist) 
- [Cecilia Singh Caro](https://github.com/CecileSC)
- [Carla Biscotti](https://github.com/carla-caracola)  
- Adalab- Examining body-[Adalab](https://adalab.es/)


## 🎁 Acknowledgements
To the ADALAB professors for the attention given throughout the project.
To our classmates for their support and for sharing.

