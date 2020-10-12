# My Dwelling

This project is a mobile housing application and landing page for the app. The 
landing page would allow users to find the app, see features and screenshots as 
well as login to their account to change important information. The mobile app 
component would allow users to download the app to monitor chores, rent payments 
and check if roommates are home or not. This project originally was created to be 
the basis of a SAAS idea, building the partial mobile app and landing page helped 
bring this idea to life in some ways.


## Landing Page Website

This is the landing page website for the mobile app. This serves as a basic html,
css, php and js site. It is currently hosted on heroku:
* https://mydwel.herokuapp.com


## Mobile App

This is the mobile app component of the project/idea.
Originally completed on 12/15/19

You can create your own user or I provided test credentials.

Test User Credentials:
email: testuser@gmail.com
password: Password123*


Login/Sinup with Firebase works. It uses a vertical stack view to arrange the buttons 
on main view, login and signup. I had been working on the "sign out" button but kept 
running to errors so it does not currently work. It will keep you signed in until you 
force close the app. 

For the home tab, no roommates will show up as there is no "dwelling" function to tie users 
together yet.

Chores gets the current list of documents (Chore names) from firebase and displays them 
in a table view. You can click the button in the top right corner to compose a new chore. 
It allows you to save the text or discard it. Once saved the chore tab will not refresh 
automatically. Currently the only way for your new chore to show up is to quit and sign 
back in. Not ideal by any means.

The split tab currently is very similar to the chores tab but is not fully built out yet. This 
would work similarly but would allow for a calculation to split a payment.

Bills and settings are currently placeholders. I will not be building out payments or any security for secure 
payments for this project.


