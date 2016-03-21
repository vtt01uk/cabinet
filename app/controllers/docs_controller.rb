class DocsController < ApplicationController
  before_action :find_doc, only: [:show, :edit, :update, :destroy]
  
  def index
  end
  
  def create
    #create a new document will title and text
    @doc = Doc.new(doc_params)
    if @doc.save
      redirect_to @doc
    else
      render 'new'
    end
  end
    
  def show

  end
  
  def new
    @doc = Doc.new
  end
  
  def edit
  end

  
  def update
  end
  
  def destroy
    
  end
  
  # private methods apply to these controllers; 
  # helps with reducing redundancy (DRY methodology)
  private
    def find_doc
      @doc = Doc.find(params[:id])
    end

    def doc_params
      params.require(:doc).permit(:title, :content)
    end
end
