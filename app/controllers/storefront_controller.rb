class StorefrontController < ApplicationController
 def all_items
     @products = Product.all
 end

 def items_by_category
     # link to this page would be:
     # <%= link_to categorical_path(category_id: product.category.id) %>
     @products = Product.where(category: params[:category_id])
     @category = Category.find(params[:category_id])
 end

 def items_by_brand
     # link to this page would be:
     # <%= link_to categorical_path(brand: product.brand) %>
     @products = Product.where(brand: params[:brand])
     @brand = params[:brand]
 end
end