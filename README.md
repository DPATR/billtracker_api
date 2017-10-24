# DESCRIPTION

This is the API for the Bill Tracker application.

The application is designed to keep track of bills that are due for payment each month.

Each user will have their own collection of bills that cannot be viewed by other system users.

Author: Denise Patriquin Date: 10/24/2017

# VIEW ONLINE

Client Bill Tracker Application:  https://dpatr.github.io/billtracker_client/

API Bill Tracker Application:  https://cryptic-headland-52960.herokuapp.icom

Client GitHub Repository:  https://github.com/DPATR/billtracker_client

# STRUCTURE AND TECHNOLOGIES

The API follows the standard project structure in Rails:

- Application assets
    Controllers
    Models
    Serializers
- Configuration
    Routes
- Database
    Migrate
    Schema
    Seeds
- Scripts

Technologies:

- Ruby on Rails
- Heroku

## API

User authentication is built-in.  Scripts are included to test built-in actions.

Both Users and Bills resources inherit from ProtectedController.

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/users`               | `users#signup`    |
| POST   | `/users`               | `users#signin`    |
| PATCH  | `/users/:id`           | `users#changepw`  |
| DELETE | `/users/:id`           | `users#signout`   |

### Bills

| Verb   | URI Pattern     | Controller#Action |
|--------|-----------------|-------------------|
| GET    | `/bills`        | `bills#index`     |
| POST   | `/bills`        | `bills#create`    |
| DELETE | `/bills/:id`    | `bills#destroy`   |
| PATCH  | `/bills/:id`    | `bills#update`    |


## PLANNING AND APPROACH

ERD: https://imgur.com/QnCBkae

Approach:

I used a top-down analysis for this project.  The API was designed and tested first.  The Client was designed and tested using the API structure and data.

I began planning the API with an ERD.  The build design includes using a foreign key on the Bills resource to create a relationship between Users and Bills entities.

Due to the sensitive nature of User and Billing information, inheritance from ProtectedController was necessary.

I used test scenarios with appropriate tests data using curl scripts to validate functionality intially.

Once I had the Client application ready for use, I did integration and end-to-end testing for the application as a whole.

## FUTURE ENHANCEMENT

It would be beneficial to create a new resource for Creditor which currently resides in the Bills resource as a data element.  This would create a many-to-many relationships between Users and Creditors as well as between Creditors and Bills.
