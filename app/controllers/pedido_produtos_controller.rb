class PedidoProdutosController < ApplicationController
  before_action :set_pedido_produto, only: [:show, :edit, :update, :destroy]

  # GET /pedido_produtos
  # GET /pedido_produtos.json
  def index
    @pedido_produtos = PedidoProduto.all
  end

  # GET /pedido_produtos/1
  # GET /pedido_produtos/1.json
  def show
  end

  # GET /pedido_produtos/new
  def new
    @pedido_produto = PedidoProduto.new
  end

  # GET /pedido_produtos/1/edit
  def edit
  end

  # POST /pedido_produtos
  # POST /pedido_produtos.json
  def create
    @pedido_produto = PedidoProduto.new(pedido_produto_params)

    respond_to do |format|
      if @pedido_produto.save
        format.html { redirect_to @pedido_produto, notice: 'Pedido produto was successfully created.' }
        format.json { render :show, status: :created, location: @pedido_produto }
      else
        format.html { render :new }
        format.json { render json: @pedido_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_produtos/1
  # PATCH/PUT /pedido_produtos/1.json
  def update
    respond_to do |format|
      if @pedido_produto.update(pedido_produto_params)
        format.html { redirect_to @pedido_produto, notice: 'Pedido produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @pedido_produto }
      else
        format.html { render :edit }
        format.json { render json: @pedido_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_produtos/1
  # DELETE /pedido_produtos/1.json
  def destroy
    @pedido_produto.destroy
    respond_to do |format|
      format.html { redirect_to pedido_produtos_url, notice: 'Pedido produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_produto
      @pedido_produto = PedidoProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_produto_params
      params.require(:pedido_produto).permit(:pedido_id, :produto_id, :valor)
    end
end
