class Admin::PagesController < Admin::ApplicationController
  def index
    @pages = pages.order('key ASC, locale ASC')
  end

  def edit
    @page = pages.find(params[:id])
  end

  def update
    @page = pages.find(params[:id])

    if @page.update_attributes(params[:manageable_content_page])
      redirect_to admin_pages_path
    else
      render :edit
    end
  end

  protected

  def pages
    ManageableContent::Manager.pages
  end

end
