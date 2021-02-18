class LeetcodeArticlesController < Devise::RegistrationsController
  prepend_before_action :require_no_authentication, only: []
  skip_before_action :verify_authenticity_token

  def allarticles
    @articles = Article.all.as_json(only: [:id, :title, :slug, :description, :processed_html, :main_image, :tag_list])
    msg = { :status => "ok", :message => "Success!", :html => "<b>...</b>" }
    render :json => @articles
  end

  def tags
    @tags = Tag.all.as_json(only: [:id, :name])
    render :json => @tags
  end

  def get_by_tag
    @tag_articles = Article.where("cached_tag_list LIKE :tag",
                                  {:tag => "%#{params[:tag]}%"}).as_json(only: [:id, :title, :slug, :description, :processed_html, :main_image, :tag_list])
    msg = { :status => "ok", :message => "Success!", :html => "<b>...</b>" }
    render :json => @tag_articles
  end

  def get_article_by_id
    @articles = Article.find(params[:id]).as_json(only: [:id, :title, :slug, :description, :processed_html, :main_image, :tag_list])
    msg = { :status => "ok", :message => "Success!", :html => "<b>...</b>" }
    render :json => @articles
  end
end
