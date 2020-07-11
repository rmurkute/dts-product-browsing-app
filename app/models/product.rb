class Product < ApplicationRecord
  include Filterable

  scope :filter_by_brand, -> (brand) { where("brand like ?", "%#{brand}%") }
  scope :filter_by_model, -> (model) { where("model like ?", "%#{model}%") }
  scope :filter_by_ram, -> (size) { where ram: size }
  scope :filter_by_external_storage, -> (size) { where external_storage: size }
end
