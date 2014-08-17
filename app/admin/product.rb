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


  form do |f|
    f.inputs 'Products' do
      f.input :category
      f.input :title
      f.input :slideshow
      f.input :price
    end

    f.has_one :product_image do |p|


    end

    f.actions
  end

end

