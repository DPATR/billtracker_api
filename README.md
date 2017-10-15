# DESCRIPTION

This is the API for the Bill Tracker application.

Author: Denise Patriquin
Created: 17/15/2017

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

User authentication is built-in.  Scripts are included to test build-in actions.

### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

### Users

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/users`    | `users#index`     |
| GET  | `/users/1`  | `users#show`      |

### Billtracker

| Verb   | URI Pattern            | Controller#Action      |
|--------|------------------------|------------------------|
| GET    | `/get-bills`           | `bills#getbills`       |
| POST   | `/create-bills`        | `bills#createbills`    |
| PATCH  | `/update-bill/:id`     | `bills#updatebill`     |
| DELETE | `/delete-bill/:id`     | `bills#deletebill`     |

### Bills

| Verb   | URI Pattern     | Controller#Action |
|--------|-----------------|-------------------|
| GET    | `/bills`        | `bills#index`     |
| POST   | `/bills`        | `bills#create`    |
| DELETE | `/bills/:id     | `bills#destroy`   |
| PATCH  | `/bills/:id`    | `bills#update`    |
