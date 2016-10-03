class Article < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user
  private
 def article_params
   params.require(:article).permit(:title, :description,:contont, :image)
 end
end
