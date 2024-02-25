## <font style="color:tomato">💮 Normal Association </font>

## generate news model
```bash
rails g model news title content
```

## generate event model

```bash
rails g model event title content date_of_start:date
```

## generate article model

```bash
rails g model article title content:text
```

## generate comment model

```bash
rails g model comment main:text news_id:integer event_id:integer article_id:integer
```

## modify the models

```ruby

# news
class News < ApplicationRecord
  has_many :comments
end

# event
class Event < ApplicationRecord
  has_many :comments
end

# article
class Article < ApplicationRecord
  has_many :comments
end

#comment
class Comment < ApplicationRecord
  belongs_to :news , optional: true
  belongs_to :event , optional: true
  belongs_to :article , optional: true
end

```


## run

```bash
rails db:migrate
```
## <font style="color:tomato"> poymorphic association </font>

## instead of creating comment above create it like this

```bash
rails g model comment main:text commentable_type:string commentable_id:integer
```

## modify the models

```ruby
