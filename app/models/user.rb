class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, AvatarUploader
  has_many :assingments
  has_many :tasks, through: :assingments

  after_create :addTasks

  def addTasks
    Task.all.each do |i|
      self.assingments.build(task: i)
      self.save
    end
  end
end
