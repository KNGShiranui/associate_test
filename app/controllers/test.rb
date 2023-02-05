#blobs_controllerの中で定義するアクション
class BlogsController < ApplicationController
  #省略
  def show_favorite
    @favorite = current_user.favorites.find_by(blog_id: @blog.id)
  end
  #省略
end


#ルーティング
Rails.application.routes.draw do
  resources :blogs do
    collection do
      post :confirm
      get :show_favorite

    end
  end
end
