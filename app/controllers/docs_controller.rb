class DocsController < ApplicationController
  before_action :find_doc, only: [:show, :edit, :update, :destroy]
  
  def index
    @docs = Doc.where(user_id: current_user).order("created_at DESC")
  end
  
  #responsible only for the view file
  def new
     @doc = current_user.docs.build
  end
  
  def create
    #create a new document will title and text
#    @doc = Doc.new(doc_params)
    @doc = current_user.docs.build(doc_params)
    if @doc.save
      redirect_to @doc
    else
      render 'new'
    end
  end
    
  def show
  end
  
    #responsible only for the view file
  def edit
  end

  
  def update
    if @doc.update(doc_params)
      redirect_to @doc
    else
      render 'edit'
    end
  end
  
  def destroy
    @doc.destroy
    redirect_to docs_path
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
