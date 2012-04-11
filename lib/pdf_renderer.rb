require 'action_controller'
module PdfRenderer
  Mime::Type.register "appliction/pdf", :pdf
end
