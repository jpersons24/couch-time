# Couch Time

## Notes

### link_to

- Creates an `<a></a>` tag
- Takes two arguments, text to display and path

Example
> `link_to movie.title movie_path(movie)`


### button_to

- take two arguments, text to display and path
- optional 3rd argument -> method:
- button_to create a form, which defaults to "post" request method. Third optional `method` argument allows you to define the method desired 

Example
> `button_to movie.title movie_path(movie)`


### form_for

#### collection_select

- takes four arguments -> field for instance form is for, collection list, field to take from collection instance, field to display in dropdown

> ex. `f.collection_field :movie_id, Movie.all, :id, :title`

> - movie_id -> tell form what key to send back into params
> - Movie.all -> collection list
> - :id -> value to send back
> - :title -> value that user sees

## Lifecycle methods

`before_action :method_to_execute`

- can put exceptions to control when `before_action` is used
- ex. `before_action :method, only: [:these, :methods, :only]`

## HTML Partials

- allow you to re-use pieces of html over again with "repeating"
- ex. `_form.html.erb`
  - place html within partial file
- inside of normal view file:
  - ex. `<%= render 'form' %>`

## Model Validations

- Client vs Server side validations
- Server side validations using Active Record
- Validating different data types (string, number, etc.)
- create custom validation
- use flash has to persist data for additional request AND render error messages to user
