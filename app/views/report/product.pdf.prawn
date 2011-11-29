pdf.text "Relatório de produtos", :size => 20, :style => :bold, :align => :center
pdf.font_size 9

pdf.move_down(30)

items = [["Código", "Nome", "Fornecedor", "Preço", "Quantidade", "Laboratório", "Número de vendas"]]
items += @report.map do |product|
  [
    product.code,
    product.name,
    product.provider_name,
    number_to_currency(product.price),
    product.amount,
    product.laboratory,
    product.sells.count
  ]
end


pdf.table items, :header => true, 
  :row_colors => ["FFFFFF","DDDDDD"]
  
  
  #:align => { 0 => :left, 1 => :right, 2 => :right, 3 => :right, 4 => :right, 5 => :right, 6 => :right  }
  #:headers => ["Código", "Nome", "Fornecedor", "Preço", "Quantidade", "Laboratório", "Número de vendas"],