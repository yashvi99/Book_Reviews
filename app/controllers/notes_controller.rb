class NotesController < ApplicationController
	before_action :set_book, only: [:create, :destroy]

	def create
    	@note = @book.notes.new(note_params)
      	if @note.save
			redirect_to @book, notice: 'Note was successfully added.'
      	else
			redirect_to @book, alert: 'Unsuccesful!'
      	end
  	end

	def destroy
		@note = @nook.notes.find(params[:id])
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
