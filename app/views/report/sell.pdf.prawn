pdf.text "Relatório de vendas", :size => 20, :style => :bold, :align => :center
pdf.font_size 9


pdf.move_down(30)

items = [["Usuário", "Data de venda", "Quantidade de produtos vendidos", "Total"]]
items += @sells.map do |sell|
  [
		sell.user.name,
        sell.created_at.to_s,
        sell.products.count,
        sell.total.to_s
  ]
end


pdf.table items, :header => true, :row_colors => ["FFFFFF","DDDDDD"]
      
    