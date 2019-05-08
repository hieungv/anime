class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  scope :order_desc_total, ->{order total: :desc}
end
