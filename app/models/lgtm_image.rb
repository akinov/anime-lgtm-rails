class LgtmImage < ApplicationRecord
  validates :url, uniqueness: true
end
