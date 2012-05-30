class User < ActiveRecord::Base
  # Include default devise modules. Others available are: # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
:confirmable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :firstname, :lastname, :addressline1, :addressline2, :city, :zip, :state, :home_phone, :alternate_phone, :alternate_email, :User_id
  has_many :players#,:class_name=>"player"
          # validates_presence_of  :firstname,:lastname,:addressline1,:addressline2,:city,:zip,:state,:home_phone,:alternate_phone,:alternate_email

  end