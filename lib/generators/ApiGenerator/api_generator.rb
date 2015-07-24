class ApiGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  def copy_controller_file
    template "controller.rb", "app/controllers/#{plural_name}_controller.rb"
  end  

  def copy_model_file
    template "model.rb", "app/models/#{file_name}.rb"
  end  

# def create_model_file
#     create_file "app/models/#{file_name}.rb", <<-FILE 
#   class #{class_name} < ActiveRecord::Base
#
#     def as_json options = { } 
#       {}
#     end 
#   end 
#     FILE
#   end
#
#   def create_controller_file
#     create_file "app/controllers/#{plural_name}_controller.rb", <<-FILE
#   class #{plural_name}Controller < ApplicationController
#
#     def show
#       @#{plural_name} = #{class_name}.find(params[:id])
#       render json: {:#{plural_name} => @#{plural_name}}
#     end
#   end 
#    FILE  
end
