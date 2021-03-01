# Maker's BnB

## MVP

```
Any signed-up user can list a new space
```

## User Stories

### User can sign up

```
As a user,
So I can use Maker’s BnB
I would like to be able to sign up
```

### User can list a space

```
As a user
So that I can advertise my space
I would like to list my space
```

## Goals

1. Better TDD 
2. Solving in the simplest way possible
3. Having a clear understanding of the MVC - Domain Modelling
4. Learning how to work off of git branching - Teamwork
5. XP techniques - Keeping everyone on the same page!
6. Everyone's happy!

## User Story 1

![Screenshot 2021-03-01 at 15 19 21](https://user-images.githubusercontent.com/76166627/109517867-9d298780-7aa1-11eb-8199-e365613abc23.png)


```
As a user,
So I can use Maker’s BnB
I would like to be able to sign up

alias user="User"
alias client="Client"
alias server="Server"

user->client:"click signup"
client->server:"GET request"
server->client:"signup page"
client->user:"Fill out details please!"
user->client:"fills in the form"
client->server:"POST request with params"
server->client:"Details saved in sessions"
client->user:"Congrats you have signed up"
```
