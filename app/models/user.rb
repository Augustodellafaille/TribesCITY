class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :guests, class_name: "User",
                    foreign_key: "host_id"
  belongs_to :host, class_name: "User",
                    foreign_key: "host_id"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
