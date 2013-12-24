class PagesController < ApplicationController
  def home
  end

  def show
   @document = Document.find(params[:id])
   # require the ability to read documents
   authorize! :read, @document
  end
end
