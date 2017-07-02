# All models have the parent as ApplicationRecord
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
