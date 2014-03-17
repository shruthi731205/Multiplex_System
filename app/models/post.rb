class Post < ActiveRecord::Base 
(validates :Name, presence: true,
                    length: { minimum: 5 })

                    (validates :Price, presence: true)
                 

                    (validates :Description, presence: true)

                    (validates :Movie_Scree, :presence => true)
                   
has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  
    validates_attachment :photo,
    :presence => true,
    :size => { :in => 0..10.megabytes },
    :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ },                    
    :bucket => "assets.recipesapp"
end
