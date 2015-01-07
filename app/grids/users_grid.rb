class UsersGrid

  include Datagrid

  scope do
    User.all
  end

  filter(:id, :integer)
  filter(:created_at, :date, :range => true)

  column(:name, order: false)
  column(:phone, order: false)
  column(:branch, order: false) do
    self.branch
  end
  column(:admin, order: false) do |admin|
    format(admin) do |account|
      account.admin ? (content_tag :span, fa_icon('check'), class: 'label label-success') : (content_tag :span, fa_icon('times'), class: 'label label-danger')
    end
  end
  column(:address) do |addr|
    format(addr) do
      addr.home_number if addr.present?
    end
  end
  column(:actions, class: 'text-right') do |record|
    format(record) do
      content_tag :div, class: 'btn-group' do
        text = ''
        text << link_to(fa_icon("pencil-square"), edit_user_path(record), class: "btn btn-default btn-xs")
        text << link_to(fa_icon("trash"), user_path(record), method: :delete, data: { confirm: "Are you sure to delete this ?"} , class: "btn btn-default btn-xs")
        text.html_safe
      end
    end
  end

end
