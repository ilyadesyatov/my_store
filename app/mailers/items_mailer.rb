class ItemsMailer < ApplicationMailer
  default from: 'info@mystore.ru',
          template_path: 'mailers/items'

  def item_destroyed(item)
    @item = item
    mail to: 'ilya@yopmail.com',
         subject: 'Item destroyed'

  end
end
