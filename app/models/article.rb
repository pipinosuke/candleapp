class Article < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  private
 def article_params
   params.require(:article).permit(:title, :description,:contont, :image)
 end
end
