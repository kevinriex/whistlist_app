# Commands

## Main

rails g scaffold WishList title
rails g nested_scaffold WishList/WishItem description:text link:text completed:boolean completed_at:datetime wish_list:references
rails db:migrate


## Changes
rails g migration ChangeReferenceWishItem
rails destroy scaffold WishList
rails destroy nested_scaffold WishList/WishItem