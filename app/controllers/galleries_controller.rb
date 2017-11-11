class GalleriesController < ApplicationController

  before_action :set_gallery, only: [:edit, :update, :show, :destroy]

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      if params[:images]
        params[:images].each {|image|

          @gallery.pictures.create(image: image, type_id: 1)

          update_picture(@gallery.pictures.last)
        }
      end
      flash[:success] = "Dados atualizados com sucesso!"
      redirect_to galleries_path
    else
      flash[:danger] = "Opss... parece que tem algum erro!"
      render 'edit'
    end
  end

  def edit
  end

  def update
    if @gallery.update(gallery_params)
      flash[:success] = "Dados atualizados com sucesso!"
      redirect_to galleries_path
    else
      flash[:danger] = "Opss... parece que tem algum erro!"
      render 'edit'
    end
  end

  def show
  end

  def index
    # debugger
    @galleries = Gallery.all
  end

  def destroy
    if @gallery.destroy
      flash[:success] = "Cargo apagado com sucesso!"
      redirect_to galleries_path
    else
      flash[:danger] = "Opss... parece que temos um erro"
      redirect_to galleries_path
    end
  end

  private

  def gallery_params
    params.require(:gallery).permit(:name, :description)
  end

  def require_admin
    if !current_admin
      redirect_to root_path
    end
  end

  def set_gallery
    @gallery = Gallery.find(params[:id])
  end

  def update_picture(p)
    n = p.image_file_name[0...-4]
    p.year = n.split('_')[0]
    p.month = n.split('_')[1]
    p.code = n.split('_')[2]
    n.split('_').drop(3).each{|n| p.name += "#{n} "}
    p.name = p.name.chomp(' ')
    p.save
    p.set_type(p.code)

  end

end
