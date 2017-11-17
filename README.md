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

### Sort orders

- [x] Create method in model to define status
- [x] Display pending and past orders in index
- [x] Add review form only for past orders

### Delete orders

- [x] Implement delete method
- [x] Add delete button for past orders only
- [x] Add ajax to order#delete

### Order model
- [x] Validates minimum length to review
- [x] Change rating input into select (*with allowed values in const*)
- [x] Validates delivery_time (*in case date is in the past*)

### Seeds

- [x] Add multiple products for each farm
- [x] Add farms and orders for certain users

### Mailer
  - [x] Send a mail for each new order
  - [x] Text version

### Review
- [ ] Hide order without rating/review on farm page

### Upgrades

  - [ ] Add new/create farm for user (Upgrade)
  - [ ] Display best reviewed farms (Upgrade)
