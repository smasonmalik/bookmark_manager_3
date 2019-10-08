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

#### Database Set Up

1. Connect to `psql` and create `bookmark_manager` and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

To set up the for each databasetables, connect to d/base in `psql` and run the SQL scripts in the `db/migrations` folder in the order given.
