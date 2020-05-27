class NotesController < ApplicationController
	before_action :set_book, only: [:create, :destroy]

	def create
    	@note = @book.notes.new(title: params[:note][:title] , note: params[:note][:note] , reviewer_id: session[:reviewer_id] )
      	if @note.save
			redirect_to @book, notice: 'Note was successfully added.'
      	else
			redirect_to @book, alert: 'Unsuccesful!'
      	end
  	end

	def destroy
		@note = @book.notes.find(params[:id])
    	@note.destroy
      	redirect_to @book, notice: 'Note deleted.' 
  end


	private
    # Use callbacks to share common setup or constraints between actions.
    	def set_book
      		@book = Book.find(params[:book_id])
    	end

    # Only allow a list of trusted parameters through.
    	def note_params
      		params.require(:note).permit(:title, :note)
    	end

end
