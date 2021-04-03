# Spoiled (Fridgy)

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
Spoiled (Fridgy) is an app that allows users to track the perishable goods in their fridge. It also provides smoothie recipes based on the items that you have available.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Health and utility.
- **Mobile:** This app would be primarily developed for mobile. It could potentially be integrated with calendar apps, such as Google Calendar.
- **Story:** User can create and maintain a list of perishable goods, as well as expiration dates. The user can then browse recipes that they can prepare with available items. They will be notified on the day that an item is scheduled to expire.
- **Market:** Any individual could choose to use this app, but our target audience would be people who create a healthier lifestyle.
- **Habit:** This app can be the daily app for user to track food ingredient in their fridge as well as to use for smoothie recipe book based on existing ingredients. 
- **Scope:** We would start by allowing the user browse simple smoothie recipes based on what items they have available. There is a potential for gamification and social networking, similar to Fitbit (that is outside of the scope of the current design).

## Product Spec

## 1. User Stories (Required and Optional)

**Required Must-have Stories**
* User can create/delete items (including name, quantity, and expiration date)
* User can view the list of items
* User can sort the list of items
* User is notified an item is about to expire via a banner notification. 
* User can view a list of recommended recipes
* User can view recipe details
* User can set personal preferences
* Users can save a list of their favorite recipes

**Optional Nice-to-Have Stories**
* User can register a new account
* User can login
* Recommended expiration dates
* Integration w/Google calendar and Apple calendar
    
### 2. Screen Archetypes

* Discover
    * User can view a list of recommended recipes
    * User is notified an item is about to expire via a banner notification.
* Log Ingredients
    * User can view the list items
    * User can sort the list of items
* Creation
    * User can create/delete items (including name, quantity, and expiration date)
* Settings
    * User can set personal preferences
* Favorites
    * Users can save a list of their favorite recipes
* Detail
    * User can view recipe details

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Discover
* Log Ingredients
* Settings
* Favorites

**Flow Navigation** (Screen to Screen)

* Log Ingredients
    * Creation
* Discover
    * Detail

## Wireframes

Discover Page

<img src="https://i.imgur.com/5golEwr.png" width=300>

Favorites Page

<img src="https://i.imgur.com/kOS5pCC.png" width=300>

Detail Page

<img src="https://i.imgur.com/0eeHYkn.png" width=300>

Settings Page

<img src="https://i.imgur.com/j1kUSt4.png" width=300>

Log Ingredients Page

<img src="https://i.imgur.com/lJkiQEH.png" width=300>

Create Page

<img src="https://i.imgur.com/CnfVq3a.png" width=300>

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
