## generate demo app

```bash
rails g model Demo name content:text
```

## generate sub_demo

```bash
rails g model sub_demo title demo:references
```

## modify Demo model class

```ruby
class Demo < ApplicationRecord
    has_one :sub_demo    
end
```

## interacting with it on rails console

```bash
rails c

demo = Demo.create(name:"some",content:"one")

sub_demo = SubDemo.create(title:"child of first demo",demo_id:demo.id)
```
