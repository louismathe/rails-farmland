# farmland

...

## Install

1. Clone the project (*with SSH key*).
2. Run `bundle install`.
3. Create the database with `rails db:create`.
4. Run the migrations with `rails db:migrate`.

## Development

### Local

Launch local server:
```sh
rails server
```

### Production

...

### Generating Seeds

1. Create user as farmer
2. Create farm
3. Assign user to farm
4. Create user as customer
5. Create a product
6. Assign product to farm
7. Create an order with customer + product

### Feature adding workflow

Before working on a new feature, make sure you pulled the latest changes from `origin master` with `git pull origin master`.

Create a new branch:
```sh
git checkout -b branch-name
```

Once you coded your changes, commit your work:
```sh
git add .
git commit -m "Commit message"
```

**Before pushing, make sure your working directory is clean!** Then push your changes.

```sh
git push origin branch-name
```

Submit a new pull request on branch' page on GitHub interface and wait for coworkers approval.

When your PR has been approved, you can `git pull` the origin master and delete your old branch with `git sweep`.

## Roadmap

### Components

- [x] Create navbar
- [x] Create home page banner
- [x] Create footer
- [x] Create card

### Models

- [x] Create User model
- [x] Create Farm model
- [x] Create Product model
- [x] Create Order model
- [x] Create seeds
- [x] Add photo to product
- [x] Add name to User
- [x] Add Photo to farm
- [x] Add delivery time to orders
- [ ] Add new/create farm for user (Upgrade)

### Homepage

- [ ] Display best reviewed farms (Upgrade)

### Farm index

- [x] Display maps with farms around // ask user for location
- [ ] Link index map to farms cards

### Farm page

- [x] Add product's section
- [x] Create form
- [x] Add farm's section
- [x] Add reviews section

### Customer page

- [ ] Display pending orders
- [ ] Display past orders from youngest to oldest
- [ ] Create a review + rating:
  - [ ]Add a form for each order on profile page (avec hidden input Time.now) for past orders
  - [ ] Sort orders by status (pending/done)

### Devise

- [ ] Design flash alerts
- [x] Design login page
- [x] Design signup page
- [x] Design forgot password page

### As a user I can
- [x] See all farmers
- [ ] Show a specific farmer:
    - [x] Farmer picture banner
    - [x] Product picture
    - [x] form add date delivery
    - [x] Show Product price
    - [x] ( Add google map itinerary link )
    - [x] Delete review date
    - [ ] Iterate on reviews linked to the farm
    - [x] Google Map Api key

### Add Mailer
  - [ ] Subscribe
  - [ ] New order
