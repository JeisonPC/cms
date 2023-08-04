# frozen_string_literal: true

module Api
  module V1
    # Controller para manejar los eventos webhook enviados por Wompi en la versión "v1" de la API.
    class WompiController < ApplicationController

      # Método para recibir eventos webhook de Wompi
      def webhook
        # Obtener el JSON del body del request
        request_body = request.body.read

        if request_body.present?
          begin
            # Parsear el JSON a un hash
            event_data = JSON.parse(request_body)

            # Imprimir el contenido del body de la solicitud POST
            puts "POST request body:"
            puts event_data

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
  end
end
