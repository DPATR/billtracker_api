# DESCRIPTION

This is the API for the Bill Tracker application.

Author: Denise Patriquin
Created: 10/15/2017

***** Link to API application:  [ADD URL HERE]

# STRUCTURE

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

## API

User authentication is built-in.  Scripts are included to test built-in actions.

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
| DELETE | `/bills/:id     | `bills#destroy`   |
| PATCH  | `/bills/:id`    | `bills#update`    |
