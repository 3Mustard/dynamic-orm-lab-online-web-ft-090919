require_relative "../config/environment.rb"
require 'active_support/inflector'

class InteractiveRecord
  
  def table_name 
    self.to_s.pluralize
  end
  
  def column_names
    DB[:conn].results_as_hash = true 
    table_info = DB[:conn].execute("PRAGMA table_info")
  end
  
  def table_name_for_insert
  end 
  
  def col_names_for_insert
  end 
  
  def values_for_insert
  end 
  
  def save
  end 
  
  def self.find_by_name
  end 
  
  def self.find_by 
  end 
  
end