## 🛡 Generate the User model:

```bash 
rails g model User name:string email:string
```
## 🛡 Generate the Profile model:

```bash 
rails g model Profile bio:text
```

## 🛡 Generate the join table model (conventionally named):

```bash 
rails g model UserProfile user:belongs_to profile:belongs_to
```

## 🛡 Open the app/models/user.rb file and add: 

```ruby
class User < ApplicationRecord
  has_one :user_profile # association with join table
  has_one :profile, through: :user_profile # association through join table
end
```

## 🛡 Open the app/models/profile.rb file and add:

```ruby
class Profile < ApplicationRecord
  belongs_to :user # association with join table
end
```

## 🛡  Open the app/models/user_profile.rb file and add (optional, but recommended for clarity):

```ruby
class UserProfile < ApplicationRecord
  belongs_to :user
  belongs_to :profile
end
```
