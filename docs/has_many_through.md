## 🛡 generate model of User

``💻 rails g model User name:string email:string``

## 🛡 generate model of Role

``💻 rails g model Role name:string``

## 🛡 generate the joinn table model

``💻 rails g model UserRole user:belongs_to role:belongs_to``

## 🛡 Open the app/models/user.rb file and add:

```ruby #💻
class User < ApplicationRecord
  has_many :user_roles # association with join table
  has_many :roles, through: :user_roles # association through join table
end
```

## 🛡 Open the app/models/role.rb file and add:

```ruby #💻
class Role < ApplicationRecord
  has_many :user_roles # association with join table
  has_many :users, through: :user_roles # association through join table
end
```

## 🛡 Open the app/models/user_role.rb file and add (optional, but recommended for clarity):

```ruby #💻
class UserRole < ApplicationRecord
  belongs_to :user
  belongs_to :role
end
```