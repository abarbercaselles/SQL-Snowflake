# PRIVILEGES ON VIEWS

Suppose a role1 cannot select views in Snowflake 
For having permissions in a VIEW , role1 need the following: 

USAGE privileges in the DATABASE where the VIEW is located
USAGE privileges in the SCHEMA where the VIEW is located
USAGE privileges in the VIEW 

For this you need a role2 owner of the DATABASE and SCHEMA and with role2 GRANT these permisisons to role1

```
GRANT USAGE ON {DATABASE.OBJECT.SQL} TO ROLE role1
GRANT USAGE ON {SCHEMA.OBJECT.SQL} TO ROLE role1
GRANT SELECT ON {VIEW.OBJECT.SQL} TO ROLE role1

```

Do it in this order as for possibility of granting SELECT privileges you will first have to grant USAGE privileges on DATABASE and SCHEMA
