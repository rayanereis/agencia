def resource(filename)
  Rails.root.join('spec', 'resources', filename)
end

def uploaded_file(filename, mime_type)
  Rack::Test::UploadedFile.new(resource(filename), mime_type)
end
