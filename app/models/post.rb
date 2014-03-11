class Post < ActiveRecord::Base 
(validates :Name, presence: true,
                    length: { minimum: 5 })

                    (validates :Price, presence: true)
                 

                    (validates :Description, presence: true)
                   

end
