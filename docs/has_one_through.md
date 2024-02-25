## 🛡 generate Department model

```bash
💻
rails g model department name
```

## 🛡 generate Manager model

```bash
💻
rials g model manager name email contact department:references
```

## 🛡 generate ManagerHistory model

```bash
💻
rails g model manager_history joining_date:date total_experience manager:references
```

## 🛡 edit the models Manger and Department

```ruby
# 💻 don't modify this model  here managerhostory has manager_id

class ManagerHistory < ApplicationRecord
  belongs_to :manager
end

# 💻 modify this here manager table has department_id
class Manager < ApplicationRecord
  belongs_to :department
  has_one :manager_history
end

# 💻 modify this 
class Department < ApplicationRecord
  has_one :manager
  has_one :manager_history, through: :manager
end

```

## 🛡 run 

```bash 💻
rails db:migrate
```
