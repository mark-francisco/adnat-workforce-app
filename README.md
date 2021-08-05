# README

## Requirements:

```
Ruby 3.0.0
Rails 6.1.3
PostgreSQL or relational db equivalent
```

## Note: There is a Rails app (backend) and a Vue app (frontend)

## Instructions:

### Install Ruby gems:

```
bundle install
```

### Set up db on local machine:

```
rails db:create
rails db:migrate
rails db:seed
```

### Start Rails backend server:

```
rails s
```

#### Note: if your default Rails port is not 3000, use this command instead:

```
rails s -p 3000
```

### Verify that the Rails app is running by going to this URL:

```
http://localhost:3000/
```

### Start Vue server. Go to Vue project directory in the terminal and run:

```
npm run serve
```

#### Note: if your default Vue port is not 8080, use this command instead:

```
npm run serve -- --port 8080
```

### Navigate to the Vue app in the browser by going to this URL:

```
http://localhost:8080/
```

### Log in with these credentials (or you can make your own account):

```
email: test@example.com
password: password
```
