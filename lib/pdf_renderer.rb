require 'action_controller'
require 'prawn'

module PdfRenderer
  Mime::Type.register "application/pdf", :pdf
  ActionController::Renderers.add :pdf do |filename,options|
    pdf = Prawn::Document.new
    pdf.text render_to_string(options)
    send_data(pdf.render, :filename => "#{filename}.pdf", 
             :type => "application/pdf", :disposition => "attachment")
  end

end
