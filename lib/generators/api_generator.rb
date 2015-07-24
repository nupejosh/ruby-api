class ApiGenerator < Rails::Generators::NamedBase
  def create_initializer_file
    create_file "app/models/#{file_name}.rb", <<-FILE 
      class #{class_name} < ActiveRecord::Base
        
        def as_json options = { } 
          {}
        end 
      end 
    FILE
  end
end
