module PortfoliosHelper

  def image_generator(height:, width:, name:)
    "https://dummyimage.com/#{height}x#{width}/000/fff&text=#{name}"
  end

  # def portfolio_img img, type
  #   if img.main_image? || img.thumb_image?
  #     img
  #   elsif type == 'thumb'
  #     image_generator(height: '350', width: '200')
  #   else
  #     image_generator(height: '600', width: '400')
  #   end
  # end


  def portfolio_item img, type
    if type == 'thumb'
      img.thumb_image || image_generator(height: '350', width: '200').to_s
    else
      img.main_image || image_generator(height: '600', width: '400').to_s
    end
  end



  # self.main_image ||= Placeholder.image_generator(height: 600,width: 400, name: 'Company Name')
  # self.thumb_image ||= Placeholder.image_generator(height: 348,width: 225, name: 'Company Name')
end
