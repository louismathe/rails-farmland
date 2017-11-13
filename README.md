# farmland

...

## Install

1. Clone the project (*with SSH key*).
2. Run `bundle install`.
3. Create the database with `rails db:create`.
4. Run the migrations with `rails db:migrate`.

## Feature adding workflow

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

## Generate Seeds

1. Create user as farmer
2. Create farm
3. Assign user to farm
4. Create user as customer
5. Create a product
6. Assign product to farm
7. Create an order with customer + product

## Roadmap

### Components

- [ ] Create navbar
- [ ] Create home page banner
- [ ] Create footer
- [ ] Create card

### Models

- [x] Create User model
- [x] Create Farm model
- [x] Create Product model
- [x] Create Order model
- [ ] Create seeds
- [ ] Add farmer option to user (Upgrade)
- [ ] Create Review model (Upgrade)

### Homepage

- [ ] Display best reviewed farms

### Farm index

- [ ] Display maps with farms around
- [ ] Display farms from closest to furthest

### Farm page

- [ ] Add product's section
- [ ] Create form
- [ ] Add farm's section
- [ ] Add reviews section

### Customer page

- [ ] Display pending orders
- [ ] Display past orders from youngest to oldest
