rails g scaffold WishList title
rails g nested_scaffold WishList/WishItem description:text link:text completed:boolean completed_at:datetime wishlist:references
rails db:migrate