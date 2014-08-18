ActiveAdmin.register Product do

  permit_params :title, :price, :slideshow, :photo, :category => :name

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  form do |f|
    f.inputs "Product Details" do
      f.input :title
      f.belongs_to :category do |p|
        p.inputs
      end
      f.input :price
      f.input :slideshow
      f.input :photo, :required => false, :as => :file
    end
    f.actions
  end

  show do |ad|
    attributes_table do
      row :title
      row :category
      row :photo do
        image_tag(ad.photo.url(:medium))
      end

    end
  end

end
