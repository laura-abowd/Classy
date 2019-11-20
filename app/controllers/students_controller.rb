class StudentsController < ApplicationController

  def index
    @students = Student.all
    @student = Student.first
    # @mystudents = Student.joins(:classroom_enrollments, :classrooms).where(teacher_id: current_teacher.id)

  end

  def update

  end




private

  def student_params
    params.require(:student).permit(:esl, :gifted_talented, :special_education, :medical_alert, :notes)
  end

end




# class ArticlesController < ApplicationController
#   before_action :set_article, only: [:show, :edit, :update, :destroy]

#   # GET /articles
#   def index
#     @articles = Article.all
#   end

#   # GET /articles/1
#   def show
#   end

#   # GET /articles/new
#   def new
#     @article = Article.new
#   end

#   # GET /articles/1/edit
#   def edit
#   end

#   # POST /articles
#   def create
#     @article = Article.new(article_params)

#     if @article.save
#       redirect_to @article, notice: 'Article was successfully created.'
#     else
#       render :new
#     end
#   end

#   # PATCH/PUT /articles/1
#   def update
#     if @article.update(article_params)
#       redirect_to @article, notice: 'Article was successfully updated.'
#     else
#       render :edit
#     end
#   end

#   # DELETE /articles/1
#   def destroy
#     @article.destroy
#     redirect_to articles_url, notice: 'Article was successfully destroyed.'
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_article
#       @article = Article.find(params[:id])
#     end

#     # Only allow a trusted parameter "white list" through.
#     def article_params
#       params.require(:article).permit(:title, :content)
#     end
# end


