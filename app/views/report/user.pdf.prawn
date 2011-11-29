pdf.text "Relatório de Usuários", :size => 20, :style => :bold, :align => :center
pdf.font_size 9

pdf.move_down(30)

items = [["Nome", "Email", "Telefone", "Endereço", "Rg", "CPF", "Quantidade de vendas"]]
items += @report.map do |user|
  [
    user.name,
    user.email,
    user.phone,
    user.address,
    user.rg,
    user.cpf,
    user.sells.count
  ]
end


pdf.table items, :header => true, 
  :row_colors => ["FFFFFF","DDDDDD"]
       