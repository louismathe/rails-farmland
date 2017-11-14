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
- [ ] Create card

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
- [ ] Add farmer option to user (Upgrade)
- [ ] Create Review model (Upgrade)

### Homepage

- [ ] Display best reviewed farms

### Farm index

- [ ] Display maps with farms around
- [ ] Display farms from closest to furthest

### Farm page

- [x] Add product's section
- [ ] Create form
- [x] Add farm's section
- [x] Add reviews section

### Customer page

- [ ] Display pending orders
- [ ] Display past orders from youngest to oldest

### Devise

- [ ] Design flash alerts
- [ ] Design login page
- [ ] Design signup page
- [ ] Design forgot password page

# As a user I can
- [x] See all farmers
- [ ] Show a specific farmer:
    - [ ] Farmer picture banner
    - [ ] Product picture
    - [ ] form add date delivery
    - [x] Show Product price
    - [ ] ( Add google map link )
    - [x] Delete review date
    - [ ] Iterate on reviews
    - [ ] Google Map Api key
