# Many to Many relationships

What you have two entities in the database

- `users`
- `user_groups`

A user can be a member of many `user_groups` but a `user_group` can also have many `users`.

This is an example where we need to create an extra table in our database. We will call it a `user_group_membership` table. the purpose of this table is to track `membership` of users within a group.
