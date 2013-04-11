module LogExceptions
  class Exception < ActiveRecord::Base
    set_table_name "exceptions"
    attr_accessible :message
    scope :recent, order("created_at desc")
  end
end