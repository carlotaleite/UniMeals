

# Uni Meals Development Report

* Business modeling 
  * [Product Vision](#product-vision)
  * [Elevator Pitch](#elevator-pitch)
* Requirements
  * [Use Case Diagram](#use-case-diagram)
  * [Domain model](#domain-model)
* Architecture and Design
  * [Logical architecture](#logical-architecture)
  * [Physical architecture](#physical-architecture)

 ## Business modeling

&nbsp; 

## Product Vision
For any student who likes to eat near Feup, UniMeals is the best app to help you find the top places to have a meal, showing you the best options of dishes and menus for the cheapest prices, comparing all options available for you and even showing you reliable ratings for each place. Also, unlike sigarra's website UniMeals offers an easy to use, friendly interactive interface with filters customization and directions to the locations of all the places available. Our product, aims to organize all the information in one place symplifing access to every information needed by the students.


&nbsp; 


## Elevator Pitch
For students, professors and all members of the FEUP community, who usually eat out at least once a week and prefer a place close to the university, Uni Meals is the best option for you to have access to the weekly menus of all the restaurants/canteens belonging to your campus. There, you will be able to consult all the places where you can eat, the types of dishes available including fish, meat, vegetarian and diet, the menu for each day of the week and the total price of each dishes according to your choice.
 It has interactive interface that will make it easier for you to access all the information and compare each place and each dish to choose the best option for your budget. 

&nbsp; 


## Main Features
 -  Show menus for each day of the week for each restaurant 
 -  Restaurant directions
 -  Filter the dishes - The user may filter the dishes according to what they want to eat
 -  Rating the restaurant and dishes
 -  Option to only show the open restaurants according to the phone hour

&nbsp; 

## Assumptions and dependencies
- Sigarra's Menu information
- Prices label
- Restaurants / Canteens locations

&nbsp;

## Requirements
- ### Use case diagram
![](https://github.com/LEIC-ES-2021-22/2LEIC06T5/blob/main/images/useCaseModel.png)

&nbsp; 

- ### Show menus for each day of the week
    **Actor** - Student;

    **Description** - The students can plan where and which plate they want to eat for each day of the week in advance;

    **Preconditions** - The student wants to see informations about a menu available in different places regarding a day of the week;

    **Postconditions** - The student sees information about the menu in that week.

    **Normal Flow** - **(1)** The user selects a menu; **(2)** The system shows the places and the plates for each place in that week.

    **Alternative Flows and Exceptions** - **(1)** The student can go back if they select the wrong menu by mistake. **(2)** The system shows the places and the plates for each place in that week.
    **Another Alternative Flow** - If the menu is not available in the app a message will be shown to advice the user.

&nbsp;

- ### See restaurant directions
    **Actor** - Student;

    **Description** - Allows the student to obtain the direction to any of the restaurants 
    that are available in the app and see how much time it takes for them to get there on feet.

    **Preconditions** - The restaurant is in the app. The restaurant has its localization available. If the student wants to know how much time does it take to get there on feet, the GPS must be turned on.

    **Postconditions** - The student gets the exact localization of the restaurant. The system estimates the time it that takes the student to get to the restaurant.

    **Normal Flow** - **(1)** The student accesses the list of restaurants; **(2)** Chooses a restaurant; **(3)** Click in button to see direction / click button to estimate the time it takes to get there on feet.

    **Alternative Flows and Exceptions** - **(1)** The student accesses the list of restaurants; **(2)** Chooses a restaurant; **(3)** Click button to estimate the time it takes to get there on feet; **(4)** Error, the GPS is not turned on.

&nbsp;

- ### Filter the uni restaurants open at the time the app is being used.
    **Actor** - Student;

    **Description** - Allows the student to see which restaurants are open in the campus, according to the clock on it's phone.

    **Preconditions** - **(1)** The student wants to know which restaurants are opened at that time. **(2)** The app needs to have acess to the phone hours. **(3)** The system needs to have acess to the restaurant's opening time.

    **Postconditions** - **(1)** The student chooses to check which restaurants are open; **(2)** The student opens the app; **(3)** Only restaurants that are open are shown.

    **Normal Flow** - The student opens the app, the restaurants that are open are shown.

    **Alternative Flows and Exceptions** - The student might want to use a toggle button shown on the menu, that shows all restaurants instead of only the open ones.

&nbsp;

- ### Filter the dishes
    **Actor** - Student;

    **Description** - Allows the student to filter the dishes according to what they want to eat.

    **Preconditions** - The restaurant is in the app; The restaurant has its menu available. 

    **Postconditions** - The student gets the menu of the restaurant.

    **Normal Flow** - **(1)** The student accesses the list of restaurants; **(2)** Chooses a restaurant; **(3)** Clicks the button to see the menu/chooses a filter for the various options in the menu.

    **Alternative Flows and Exceptions** - **(1)** The student accesses the list of restaurants; **(2)** Chooses a restaurant; **(3)**  The menu is not available.
    
&nbsp;

- ### Rating the restaurant and dishes
    **Actor** - Student;

    **Description** - Allows students to rate where they are eating and the dish they have chosen.

    **Preconditions** - The restaurants are in the app; Each restaurant shows the dishes to be evaluated, as well as the place itself. 

    **Postconditions** - The student analyzes which restaurants and dishes have the best ratings.

    **Normal Flow** - **(1)** The student accesses the list of restaurants and the dishes they serve; **(2)** Analyze which ones have the best rating; **(3)** At the end of your meal, rate the chosen restaurant and dish.

    **Alternative Flows and Exceptions** - **(1)** The student accesses the list of restaurants and the dishes they serve; **(2)** The restaurants and dishes you wanted to know about the review are not rated.

&nbsp; 

## Domain Model

![](https://github.com/LEIC-ES-2021-22/2LEIC06T5/blob/main/images/domainModel.png)


## Architecture and Design

### Logical architecture

![](https://github.com/LEIC-ES-2021-22/2LEIC06T5/blob/main/images/logicalArquitecture.png)

Our logical architecture will follow the Model-View-Controller architeture, since it is recommended to organize projects like this one that uses a GUI. This pattern separates presentation, interaction and the application data in three logical different parts that interact with each other.

The first one is the Model which contains all the application data, such as informations about the restaurants, menus, prices and ratings.
The View displays the information from the Model as an interface to the users and sends information from the user to the Controller.
The Controller is responsible by the logic of the system and requests informations from the model and sends the necessary data to the view.

&nbsp;

### Physical architecture
![](https://github.com/LEIC-ES-2021-22/2LEIC06T5/blob/main/images/physicalArquitecture2.png)


In our app's physical architecture 3 entities are featured: the FEUP server with the sigarra's database that contains almost all the information required by the app; the app itself, which the user interacts with; and the backend with the implementation of all features present in the app and all the information that can be accessed by the users. 
Regarding technologies, we used Flutter (with the Dart programming language) for the frontend and we plan to use sqlite3 for the backend because it is the database management system that seems more appropriated and that we are most familiar with.

&nbsp;

So far, contributions are exclusively made by the initial team, but we hope to open them to the community, in all areas and topics: requirements, technologies, development, experimentation, testing, etc.

Please contact us!

Thank you!



### Members

* **André Miguel Pacheco Morais** - [Andrekt02](https://github.com/Andrekt02)
* **André Medina Pereira** - [anetep](https://github.com/anetep)
* **Maria Carlota Gomes Ribeiro Matos Leite** - [carlotaleite](https://github.com/carlotaleite)
* **Maria Eduarda Pacheco Mendes Araújo** - [Eduarda34](https://github.com/Eduarda34)
* **Miguel Bravo de Almeida e Silva Figueiredo** - [grindfever](https://github.com/grindfever)
