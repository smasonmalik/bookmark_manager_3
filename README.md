# bookmark_manager

## User Story 1

```
As a user so I can see my favourite webpages
I want to view my list of bookmarks
```

![bookmark_domain_model](/images/domain-model-1.jpg)


## User Story 2

```
As a time-pressed User
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

## User Story 3

```
As a User
So that I can store bookmarks,
I would like to add new bookmarks to Bookmark Manager

```

## User Story 4

```
As a user that changes their mind
So that I can get rid of old bookmarks
I would like to delete bookmarks in the Bookmark Manager
```

## User Story 5

```
As a thick-fingered, clumsy user
So that I can amend errors in my bookmarks
I would like to update existing bookmarks in Bookmark Manager
```

#### Database Set Up

1. Connect to `psql` and create `bookmark_manager` and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

To set up the tables for each database, connect to d/base in `psql` and run the SQL scripts in the `db/migrations` folder in the order given.
