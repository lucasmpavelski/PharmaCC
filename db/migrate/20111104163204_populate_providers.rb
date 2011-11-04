class PopulateProviders < ActiveRecord::Migration
  def up
    Provider.create do |p|
      p.cnpj = "351384"
      p.name = "Sapucaí"
      p.address = "Adriano Freitas Cardoso, 80, Bairro Fátima III"
      p.city = City.where(:name => "Pouso Alegre")[0]
      p.phone = "(35) 34493700"
    end

    Provider.create do |p|
      p.cnpj = "816168"
      p.name = "DMED"
      p.address = "Egas Muniz, 110 salas 202 e 203, Vilar dos Teles"
      p.city = City.where(:name => "São João de Meriti")[0]
      p.phone = "(21)33913432"
    end

    Provider.create do |p|
      p.cnpj = "141651"
      p.name = "Farmacêutica"
      p.address = "Tv. 9 de Janeiro, 42, Umarizal"
      p.city = City.where(:name => "Belém")[0]
      p.phone = "(91)32232320"
    end

    Provider.create do |p|
      p.cnpj = "879462"
      p.name = "Droga Rápida"
      p.address = "Rua dos Otoni, 712 Cj 202, Sta Efigênia"
      p.city = City.where(:name => "Belo Horizonte")[0]
      p.phone = "(31)38790561 "
    end

    Provider.create do |p|
      p.cnpj = "1531351"
      p.name = "FARMACLINIC"
      p.address = "RUA SERRA DE BRAGANÇA. 1055 - SL. 503 / 505"
      p.city = City.where(:name => "São Paulo")[0]
      p.phone = "(11)23875426"
    end

    Provider.create do |p|
      p.cnpj = "51351"
      p.name = "Farmashoprio"
      p.address = "Estr de Jacarepagua 7880 Loja B C D, Freguesia"
      p.city = City.where(:name => "Jacarezinho")[0]
      p.phone = "(21)24251070"
    end

    Provider.create do |p|
      p.cnpj = "86464"
      p.name = "LIMED MOGI"
      p.address = "R BAHIA 531 B SAUDE"
      p.city = City.where(:name => "Campinas")[0]
      p.phone = "08008810005"
    end

    Provider.create do |p|
      p.cnpj = "1764626"
      p.name = "Suporte Medicamentos"
      p.address = "Rua Guilherminio novais, 09 recreio Recreio loteamento conquistinha"
      p.city = City.where(:name => "Vitória")[0]
      p.phone = "(77)34211634"
    end

    Provider.create do |p|
      p.cnpj = "1651684"
      p.name = "DISDROL"
      p.address = "Av. Leônidas Melo, n°188, Bairro Piçarra"
      p.city = City.where(:name => "Teresina")[0]
      p.phone = "(86) 21068500"
    end
  end

  def down
    Provider.delete_all
  end
end
