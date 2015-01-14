class DocumentsController < ApplicationController

  def show
    @document = Document.find(params[:id])
  end

  def index
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new (document_params)
    @document.user = current_user
    if @document.save
      flash[:success] = "Document Creation Successful!"
      redirect_to @document
    else
      render 'new'
    end
  end

  def update
    @document = Document.find(params[:id])
    if @document.update_attributes(user_params)
      flash[:success] = "Document updated"
      redirect_to @document
    else
      render 'edit'
    end
  end

  def destroy
    Document.find(params[:id]).destroy
    flash[:success] = "Document deleted"
    redirect_to @document
  end

  def edit
    @document = Document.find(params[:id])
  end

  private

      def document_params
        params.require(:document).permit(:title,:description)
      end




end
