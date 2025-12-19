# Ari Stokes Programming Portfolio
Email: aristotle.c.stokes@gmail.com

## Certifications:
![Programing One Certification](https://github.com/ArastooOrg/portfolio-for-2025/blob/main/images/Programming%20One%20Certificaiton.png?raw=true)

## Projects for Term 1

### Calculator (2025)

This application is a visually interactive calculator built using Processing, a Java-based graphics framework. It features a custom Button class to manage the appearance and behavior of each clickable element, including digits, operations, and utility functions. The interface is designed with hover effects, rounded buttons, and a dynamic display that updates in real time as users input values or perform calculations. The calculator supports basic arithmetic operations like addition, subtraction, multiplication, and division, as well as advanced functions such as exponentiation, square root, and absolute value.

Internally, the calculator tracks two operands (l and r), a result, and the current operation. Input is managed through a string (dVal) that reflects the user's current entry, which is parsed into float values for computation. The mousePressed() function handles all user interactions, updating the state based on which button is clicked. The design also includes safeguards like input length limits and decimal point validation, making the calculator both functional and user-friendly.

![Running Calculator](https://github.com/ArastooOrg/portfolio-for-2025/blob/main/images/CALC.png?raw=true)

* [Windows EXE](https://github.com/ArastooOrg/portfolio-for-2025/blob/main/src/Calculator/windows-amd64.zip)
* [MacOSX](https://github.com/ArastooOrg/portfolio-for-2025/blob/main/src/Calculator/macos-aarch64.zip)
* [Source Code](https://github.com/ArastooOrg/portfolio-for-2025/tree/main/src/Calculator)

### Making Cars (2025)

This application is a Processing sketch that simulates cars moving across the screen using object-oriented programming. In the setup, a 600 by 600 window is created and multiple `Car` objects are initialized. Two individual cars are made with fixed colors (red and green), while an array of 100 additional cars is filled with randomly generated colors. Each car is assigned a random starting position, speed, and direction when it is constructed. The use of a class allows the program to efficiently manage many cars at once by reusing the same structure and behaviors for every object.

During the draw loop, the background is refreshed and every car is displayed and moved across the screen. The `display()` method draws each car using rectangles to represent the body and wheels, with slight visual differences depending on whether the car is moving left or right. The `move()` method updates the car’s position based on its speed and direction, creating smooth horizontal motion. When a car reaches one side of the screen, it wraps around to the opposite side, allowing the animation to continue endlessly. Overall, this application demonstrates how arrays, classes, and methods work together to create a dynamic and visually engaging animation.

![Making Cars](https://github.com/ArastooOrg/portfolio-for-2025/blob/main/images/Making%20Cars.png?raw=true)

* [Source Code](https://github.com/ArastooOrg/portfolio-for-2025/tree/main/src/MakingCars)

### History of the Computer (2025)

This application is a Processing sketch that presents a visual timeline of important historical computer systems. In the setup, a wide canvas is created to allow space for a horizontal timeline, and the draw loop continuously redraws the background and timeline elements. The `drawRef()` function is responsible for rendering the title, author name, and the main timeline line with start and end markers representing the span of years. Several historical events are then placed along the timeline using the `histEvent()` function, each positioned at a specific x-coordinate to reflect its place in time and alternated above or below the timeline for visual clarity.

Each historical event is displayed as a labeled rectangle connected to the timeline by a line, making the progression of computer history easy to follow. When the user moves the mouse over an event box, additional descriptive text appears at the bottom of the screen, providing more detailed information about that computer system and its purpose. This interactive feature encourages exploration and helps users learn by hovering over different points in the timeline. Overall, the application combines text, shapes, and user interaction to effectively communicate the evolution of computer technology in a clear and engaging way.

![The History of the Computer](https://github.com/ArastooOrg/portfolio-for-2025/blob/main/images/History%20of%20the%20Computer.png?raw=true)

* [Source Code](https://github.com/ArastooOrg/portfolio-for-2025/tree/main/src/The_History_of_the_Computer)

### If Structure

This project is an interactive grade converter created using Processing that visually maps numeric GPA values to letter grades. The program displays a horizontal scale across the window with evenly spaced tick marks and labels, allowing users to see how GPA values are distributed. As the mouse moves left and right across the screen, a small indicator follows the cursor and displays the corresponding GPA value in real time. This makes the relationship between numeric grades and letter grades easy to understand and visually intuitive.

The program uses a custom function to convert GPA values into standard letter grades based on defined thresholds. The calculated letter grade is shown at the bottom of the window and updates dynamically as the mouse position changes. By combining graphical elements, user interaction, and conditional logic, this project demonstrates how visual programming can be used to represent abstract academic data in a clear and engaging way.

![If Structure](https://github.com/ArastooOrg/portfolio-for-2025/blob/main/images/If%20Structure%20Running.png?raw=true)

* [Source Code](https://github.com/ArastooOrg/portfolio-for-2025/tree/main/src/IfStructure)

## Projects for Term 2

### Musik Helfer

This application, called Musik Helfer, is a multi-tool music practice program built in Processing that combines several core tools musicians commonly need into a single interface. The app opens with a main menu that lets the user switch between four modes: pitch ear training, a tuner, an auto-harmonizer, and a metronome. Each mode is visually separated and controlled using custom buttons, making the program easy to navigate while practicing. The overall goal of the application is to help musicians develop accuracy, timing, and theoretical understanding in an interactive way.

The pitch ear training mode focuses on interval recognition. When the user presses the play button, the program randomly selects two notes, plays them sequentially, and calculates the interval between them. The user then chooses which interval they believe was played by selecting one of the labeled buttons. The program provides immediate feedback using visual flashes: green for correct answers and red for incorrect ones. This mode helps train relative pitch and reinforces interval identification, which is an essential skill for musicians.

The tuner mode allows users to play reference pitches for all twelve chromatic notes. Each note has its own button, and pressing one plays a sound file corresponding to that pitch. The currently selected note is displayed prominently on the screen, and a draggable volume slider lets the user control playback loudness. This mode is useful for tuning instruments by ear and for reinforcing pitch memory without relying on an external tuner.

The auto-harmonizer and metronome modes focus on theory and timing. In the harmonizer, users can input notes onto a staff, choose note durations, add accidentals, switch clefs, and then generate a harmonized chord based on the entered melody. The resulting chord is displayed both textually and visually on a staff, and it can be played back using sound files. The metronome mode allows users to adjust tempo, start and stop playback, and receive both audio and visual beat feedback. Together, these features make Musik Helfer a comprehensive practice aid that supports musicians in developing ear training, rhythm, tuning, and harmonic awareness. 

My personal contributions were creating the Metronome, the gradient on the side bar, and the logo. My team members were Mo Spiegel, Ethan Tang, Simon Sakata, and Kai Yun Chao.

![Musik Helfer](https://github.com/ArastooOrg/portfolio-for-2025/blob/main/images/Musik%20Helfer%20Start%20Screen.png?raw=true)

![Musik Helfer Running](https://github.com/ArastooOrg/portfolio-for-2025/blob/main/images/Musik%20Helfer%20Running.png?raw=true)

* [Project Repository](https://github.com/Kai535813/Musikhelfer)
