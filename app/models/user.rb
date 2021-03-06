class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :curriculums
  has_many :students
         # has_and_belongs_to_many :students,
         # class_name: "User",
         # join_table: :students,
         # foreign_key: :instructor_user_id,
         # association_foreign_key: :student_user_id

 	def as_json(options = {})
    super(options.merge(include: [:curriculums, :students]))
	end  
end
