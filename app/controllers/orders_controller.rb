class OrdersController < ApplicationController
  before_action :authenticate_user!, except: :wompi_webhook
  before_action :set_order, only: %i[ show edit update destroy ]
  protect_from_forgery with: :null_session

  def index
    @orders = Order.all
  end

  def wompi_webhook
    begin
      # Obtener los datos relevantes del evento de Wompi
      event_data = params['data']['transaction']

      # Crear la orden en la base de datos
      @order = Order.new(
        name: event_data['reference'],
        price: event_data['amount_in_cents'],
        quantity: 1, # Puedes establecer la cantidad según tu lógica de negocio
        paid: true   # Marcar la orden como pagada ya que es un webhook de transacción exitosa
      )

      if @order.save
        head :ok
      else
        head :unprocessable_entity
      end
    rescue => e
      # Capturar la excepción y registrarla en el archivo de registro
      Rails.logger.error "Error en webhook: #{e.message}"
      head :internal_server_error
    end
  end

  def show
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to order_url(@order), notice: "Order was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_url(@order), notice: "Order was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
    end
  end



end
