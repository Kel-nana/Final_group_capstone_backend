class Doctor < ApplicationRecord
    belongs_to :User, class_name: 'User', foreign_key: 'user_id'
    has_many :appointments
    has_many :specializations
    has_and_belongs_to_many :specializations #join_table: :categories_exchanges
end
