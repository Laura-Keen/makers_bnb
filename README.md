# Makers BnB

The goal of this project is to make a simplified clone of AirBnb.

We worked on this project in a team of 5 and had one week to do it. 

[Demo](#demo) | [Set Up Instructions](#set-up-instructions) | [Team Goals](#team-goals) | [Planning](#planning) | [Tech](#tech) | [Approach](#approach) 

## Demo 

**Homepage**: Gives user the option to log in, sign up or view listings.

![Screenshot 2021-05-05 at 16 25 45](https://user-images.githubusercontent.com/60509804/117288595-92092400-ae63-11eb-8fc7-5fbf0025b45d.png)

**Sign Up**: User can sign up with email to make an account.

![Screenshot 2021-05-05 at 16 26 41](https://user-images.githubusercontent.com/60509804/117288104-0b544700-ae63-11eb-8ffa-ccdfe02b51ff.png)

**Dive In**: User can log in to their account if they already have one.

![Screenshot 2021-05-05 at 16 25 59](https://user-images.githubusercontent.com/60509804/117287930-d647f480-ae62-11eb-93d5-ee17307ae9fe.png)

**Incorrect Username or Password**: User receives an error notice if their username or password is incorrect.

![Screenshot 2021-05-06 at 12 11 20](https://user-images.githubusercontent.com/60509804/117289234-44d98200-ae64-11eb-97d2-51466df18c6a.png)

**Welcome**: Once user has signed in, they will get a welcome message including their first name and they now have the options to make a new listing or logout as well as the original view all listings.

![Screenshot 2021-05-05 at 16 27 58](https://user-images.githubusercontent.com/60509804/117288386-5a9a7780-ae63-11eb-8e30-42a7f9a53e63.png)

**New Listing**: User can list their property for rent - they must include a title, a brief description and a price.

![Screenshot 2021-05-05 at 16 28 08](https://user-images.githubusercontent.com/60509804/117287813-ab5da080-ae62-11eb-93c2-eeab233ef0a2.png)

**View Listings**: User can see what listings are available - this includes the username of the person who owns the listing, a title and description and the price per night.

![Screenshot 2021-05-05 at 16 37 06](https://user-images.githubusercontent.com/60509804/117287678-836e3d00-ae62-11eb-8d39-d8a7154905b2.png)

## Set Up Instructions
Clone this repository to your local machine.

In your terminal, run `bundle install` to install all gems needed.

**To set up the database, please do the following:**
```
- Connect to psql
- Create the database using the psql command CREATE DATABASE makers_bnb;
- Connect to the database using the pqsl command \c makers_bnb;
- Run the query we have saved in each of the files in /db/migrations
````

## Team Goals

1. Better TDD 
2. Solving in the simplest way possible
3. Having a clear understanding of the MVC - Domain Modelling
4. Learning how to work off of git branching - Teamwork
5. XP techniques - Keeping everyone on the same page!
6. Everyone's happy!

## Planning

We used a [Trello Board](https://trello.com/b/2ga0OPTw/makers-bnb) to help delegate roles each day and write a to do list of tickets that we wanted to get done. 
We used GitHub issues for tickets.

![Screenshot 2021-05-06 at 11 34 27](https://user-images.githubusercontent.com/60509804/117285862-646eab80-ae60-11eb-8c89-40e693491726.png)


### MVP (Minimum Viable Prouct)

```
Any signed-up user can list a new space
```
### User Stories

**User can sign up**
```
As a user,
So I can use Maker’s BnB
I would like to be able to sign up
```
![Screenshot 2021-03-01 at 15 19 21](https://user-images.githubusercontent.com/76166627/109517867-9d298780-7aa1-11eb-8199-e365613abc23.png)

**User can list a space**
```
As a user
So that I can advertise my space
I would like to list my space
```

![Screenshot 2021-03-01 at 16 10 57](https://user-images.githubusercontent.com/76166627/109524836-dc0f0b80-7aa8-11eb-908c-2ffbdb80c58f.png)

## Tech

Ruby, Sinatra, Rspec, Capybara, PostgreSQL

## Approach

As a team we decided that we wanted to focus on learning and developing our skills and took a quality over quantity approach. 

Something that was important to us was making sure that everyone on the team understood all of the code. To facilitate this we would have a stand up in the morning to decide what tickets would be worked on that day and then we had a team retro in the afternoon to review work, merge our GitHub branches and explain the code to anyone in the team who felt that they didn't understand how a certain feature worked or why the code had been written in a certain way.

We followed an agile work flow and used GitHub issues to break tasks down into tickets. We split into one pair and one group of three and rotated this every day so that we would all have an opportunity to work with different people in the group and so that everyone could work on every feature. In our morning stand ups we would decide which was the more challenging ticket of the day and this would be given to the group of three, whilst the less challenging ticket would be taken on by the pair.

[Back to top](#makers-bnb)
