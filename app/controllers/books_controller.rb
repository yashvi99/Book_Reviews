class BooksController < ApplicationController
  before_action :set_book, only: [:edit, :update, :destroy]
  before_action :set_book_show, only: [:show, :add]

  # GET /books
  # GET /books.json
  def index
    @books = Reviewer.find(session[:reviewer_id]).books.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end


  # GET /books/new
  def new
    @book = Reviewer.find(session[:reviewer_id]).books.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    if(Book.find_by(name: params[:book][:name]))
      redirect_to library_path, notice: 'Book already exists'
    else
      @book = Book.new(book_params)

      respond_to do |format|
        if @book.save
          Reviewer.find(session[:reviewer_id]).books << @book
          format.html { redirect_to books_url, notice: 'Book was successfully created.' }
          format.json { render :show, status: :created, location: @book }
        else
          format.html { render :new }
          format.json { render json: @book.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to books_url, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    Reviewer.find(session[:reviewer_id]).books.delete(@book)
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def all
    @books = Book.all
  end

  def add
    if not Reviewer.find(session[:reviewer_id]).books.include?(@book)
      Reviewer.find(session[:reviewer_id]).books << @book
      @msg = "Book succesfully added"
    else
      @msg = "Book already exists"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Reviewer.find(session[:reviewer_id]).books.find(params[:id])
    end

    def set_book_show
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:name, :author)
    end
end
