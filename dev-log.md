# Models

## _USER_
### Attributes

username
password
mood

### Relationships

has_one :dietary_restriction
has_many :food
has_many :drink
has_many :dessert

##_DIETARY_RESTRICTION_
### Attributes

vegetarian
vegan
peanut free
gluten free
soy free

### Relationships

belongs_to :user
has_many :food, through: :user
has_many :drink, through: user
has_many :dessert, through: :user

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