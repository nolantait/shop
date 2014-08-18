ActiveAdmin.register Product do


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
  #

  permit_params :category, :title, :slideshow, :price, :photo

  form do |f|
    f.inputs 'Products' do
      f.input :category
      f.input :title
      f.input :slideshow
      f.input :price
      f.input :photo, required: false


    end

    f.actions
  end

end

