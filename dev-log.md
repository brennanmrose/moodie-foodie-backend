# Models

## _USER_
### Attributes

username
password
mood

### Relationships

has_one :dietary_restriction
has_one :food
has_one :drink
has_one :dessert

##_DIETARY_RESTRICTION_
### Attributes

vegetarian
vegan
peanut free
gluten free
soy free

### Relationships

belongs_to :user
has_one :food, through: :user
has_one :drink, through: user
has_one :dessert, through: :user

##_FOOD_
### Attributes

name

### Relationships

belongs_to :user
has_one :dietary_restriction, through: :user

##_DRINK_
### Attributes

name

### Relationships

belongs_to :user
has_one :dietary_restriction, through: :user

##_DESSERT_
### Attributes

name

### Relationships

belongs_to :user
has_one :dietary_restriction, through: :user