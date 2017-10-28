class Vendor < ActiveRecord::Base
	validates_presence_of :name,:mobile,:email
	validates_uniqueness_of :mobile,:email
end
