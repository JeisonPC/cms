class WompiController < ApplicationController
  protect_from_forgery with: :null_session

  def wompi_webhook
    # Obtener el JSON del body del request
    request_body = request.body.read

    if request_body.present?
      begin
        # Parsear el JSON a un hash
        event_data = JSON.parse(request_body)

        # Imprimir el contenido del body de la solicitud POST
        puts "POST request body:"
        puts request_body

        # ... (resto del código para verificar la autenticidad del evento y procesarlo)
      rescue JSON::ParserError => e
        # Manejar el error de JSON no válido
        puts "Error al parsear el JSON: #{e.message}"
      end
    else
      puts "El body de la solicitud POST está vacío"
    end
  end
end
