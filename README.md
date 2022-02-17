# VaultTest_DB

## images
1. vault db: test kv
2. test db: test db access

## set up for DB credential test
1. create a role for vault
		```mysql
		create role vaultrole;
		```
2. assign testdb and myslq db privileges to the role
		```mysql
		grant all privileges on testdb.* to vaultrole with grant option;
		grant all privileges on mysql.* to vaultrole with grant option;
		```
3. create user
		```mysql
		create user 'vaultroot'@'%' identified by 'qwer12#$';
		```
4. assign the role
		```mysql
		grant vaultrole to 'vaultroot'@'%';
		```

