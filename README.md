# Dungeons and Dating API

Dungeons and Dating API is a Rails API that serves data to Dungeons and Dating.

## Installation

1. First make sure all gems are installed
```    
bundle install
```
2. Then setup the database
```
rails db:migrate
```
3. Then seed the database
```
rails db:seed
```
## Usage
### Authorization

Dungeons and Dating API is a completely open resource.

### Endpoints

| Method | URL | Resource |
|--------|------|-----|
| POST | /users | Create a User |
| GET | /users/:id | Get Specific User|
| GET | /users/:user_id/characters| Get Users Characters
| POST | /users/:user_id/characters | Create a new character for a user|
| GET | /users/:user_id/characters/:id | Get a users specific character|
| GET | /character | Returns all characters except logged in User's characters|
| GET | /character/:id | Returns specific character data|
| POST | /sessions | Returns a JWT token |
| GET | /images | Returns all character images |

### Tables

#### Users
| column | data-type |
|------|------|
| first_name | string|
| last_name | string|
| email | string|
| password-digest | string|

#### Characters

| column | data-type |
|------|------|
| user_id | integer (optional)|
| image_id | integer |
| name | string|
| character_class | string|
| race | string|
| bio | string|

#### Relationships


| column | data-type |
|------|------|
| interest_id | integer |
| suitor_id | integer |
| score | integer |

#### Stats

| column | data-type |
|------|------|
| character_id | integer |
| strength | integer |
| dexterity | integer |
| constitution | integer |
| intelligence | integer |
| wisdom | integer |
| charisma | integer |

#### Images

|column | data-type|
|-------|--------|
|url| string|

### Notes

** Fast-JSON api used for Data Serialization

### Roadmap

* Add date model
* Add update method to relationships

