class InventoryInvoicesGrid

  include Datagrid

  scope do
    InventoryInvoice.all
  end

  filter(:id, :integer)
  filter(:created_at, :date, :range => true)

  column(:number)
  column(:shipping_cost)
  column(:vat)
  column(:other_cost)
  column(:date)
  [:item].each do |items|
    column(items) do |i|
      format(i) do |i|
        i.inventory_invoice_line_items.each do |item|
          item
        end
      end

    end
  end
  column(:user, header: 'Created by', order: 'users.name') do
    self.user
  end

  column(:actions, class: 'text-right') do |record|
    format(record) do
      content_tag :div, class: 'btn-group' do
        text = ''
        text << link_to(fa_icon("trash"), inventory_invoice_path(record), method: :delete, data: { confirm: "Are you sure to delete this ?"} , class: " btn btn-default btn-xs")
        text.html_safe
      end
    end
  end

end
