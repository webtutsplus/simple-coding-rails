class LeetcodeArticlesController < Devise::RegistrationsController
  prepend_before_action :require_no_authentication, only: []
  skip_before_action :verify_authenticity_token

  def allarticles
    @articles = Article.all.as_json(only: [:id, :title, :slug, :description, :processed_html, :tag_list])
    msg = { :status => "ok", :message => "Success!", :html => "<b>...</b>" }
    render :json => @articles
  end

  def tags
    @tags = Tag.all.as_json(only: [:id, :name])
    render :json => @tags
  end

  def get_by_tag
    sql = "SELECT * from public.articles WHERE cached_tag_list LIKE '%"+params[:tag]+"%';"
    @tag_articles = Article.find_by_sql(sql).as_json(only: [:id, :title, :slug, :description, :processed_html, :tag_list])
    msg = { :status => "ok", :message => "Success!", :html => "<b>...</b>" }
    render :json => @tag_articles
  end
end
