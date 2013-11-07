class ContactosMailer < ActionMailer::Base
  default :from => "web@rio.com.pe"

  def confirmacion_de_contacto(contacto)
    @contacto = contacto
    mail(:to => "producciones@rio.com.pe", :cc => "rioproduccionesperu@gmail.com", :reply_to => contacto.email, :subject => "Mensaje desde la web")
  end

end
