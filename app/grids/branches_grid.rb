class BranchesGrid

  include Datagrid

  scope do
    Branch.all
  end

  filter(:id, :integer)
  filter(:created_at, :date, :range => true)

  column(:name) do |name|
    format(name) do
      link_to(name, branch_path(name))
    end
  end
  column(:address) do |addr|
    format(addr) do
      addr.home_number
    end
  end
  column(:actions, class: 'text-right') do |record|
    format(record) do
      content_tag :div, class: 'btn-group' do
        text = ''
        text << link_to(fa_icon("pencil-square"), edit_branch_path(record), class: "btn btn-default btn-xs")
        text << link_to(fa_icon("trash"), branch_path(record), method: :delete, data: { confirm: "Are you sure to delete this ?"} , class: "btn btn-default btn-xs")
        text.html_safe
      end
    end
  end

end
