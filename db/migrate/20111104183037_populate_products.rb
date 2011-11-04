class PopulateProducts < ActiveRecord::Migration
  def up
    Product.create do |p|
      p.name = "Venlift OD"
      p.code = 00001
      p.provider = Provider.where(:name => "Sapucaí")[0]
      p.price = "77,17"
      p.amount = 40
      p.laboratory = "Ativus"
    end

    Product.create do |p|
      p.name = "Doril"
      p.code = 00002
      p.provider = Provider.where(:name => "Farmacêutica")[0]
      p.price = "4,50"
      p.amount = 200
      p.laboratory = "Medley"
    end

    Product.create do |p|
      p.name = "Anador"
      p.code = 00003
      p.provider = Provider.where(:name => "DISDROL")[0]
      p.price = "11,29"
      p.amount = 100
      p.laboratory = "HALEX ISTAR"
    end

    Product.create do |p|
      p.name = "Dipirona"
      p.code = 00004
      p.provider = Provider.where(:name => "Droga Rápida")[0]
      p.price = "9,79"
      p.amount = 50
      p.laboratory = "HYPERMARCAS"
    end

    Product.create do |p|
      p.name = "Torsilax"
      p.code = 00005
      p.provider = Provider.where(:name => "Suporte Medicamentos")[0]
      p.price = "9,21"
      p.amount = 150
      p.laboratory = "LAPA"
    end

    Product.create do |p|
      p.name = "Trifen"
      p.code = 00006
      p.provider = Provider.where(:name => "FARMACLINIC")[0]
      p.price = "5,43"
      p.amount = 50
      p.laboratory = "PFIZER"
    end

    Product.create do |p|
      p.name = "Paracetamol"
      p.code = 00007
      p.provider = Provider.where(:name => "LIMED MOGI")[0]
      p.price = "3,50"
      p.amount = 200
      p.laboratory = "Pharmacia & Upjohn Ltda."
    end

    Product.create do |p|
      p.name = "Amoxilina"
      p.code = 8
      p.provider = Provider.where(:name => "DMED")[0]
      p.price = "18,38"
      p.amount = 150
      p.laboratory = "DUCTO"
    end


    Product.create do |p|
      p.name = "Pantoprazol 40mg"
      p.code = 9
      p.provider = Provider.where(:name => "Suporte Medicamentos")[0]
      p.price = "43,08"
      p.amount = 30
      p.laboratory = "NOVARTIS"
    end

    Product.create do |p|
      p.name = "Preserv Lite"
      p.code = 10
      p.provider = Provider.where(:name => "Sapucaí")[0]
      p.price = "3,50"
      p.amount = 30
      p.laboratory = "BLAUSIEGEL"
    end

    Product.create do |p|
      p.name = "Diclofenaco Potássico"
      p.code = 00011
      p.provider = Provider.where(:name => "DMED")[0]
      p.price = "6,75"
      p.amount = 100
      p.laboratory = "NEO QUIMICA"
    end

    Product.create do |p|
      p.name = "Diclofenaco Sódico"
      p.code = 00012
      p.provider = Provider.where(:name => "FARMACLINIC")[0]
      p.price = "9,45"
      p.amount = 100
      p.laboratory = "ARISTON"
    end

    Product.create do |p|
      p.name = "Meritor"
      p.code = 00013
      p.provider = Provider.where(:name => "Droga Rápida")[0]
      p.price = "13,87"
      p.amount = 50
      p.laboratory = "ACHÈ"
    end

    Product.create do |p|
      p.name = "Peridona"
      p.code = 00014
      p.provider = Provider.where(:name => "DISDROL")[0]
      p.price = "9,29"
      p.amount = 100
      p.laboratory = "UCI FARMA"
    end

    Product.create do |p|
      p.name = "Vodol"
      p.code = 00015
      p.provider = Provider.where(:name => "Farmashoprio")[0]
      p.price = "19,13"
      p.amount = 100
      p.laboratory = "UNIAO QUIMICA"
    end

    Product.create do |p|
      p.name = "Polaramine Líquido"
      p.code = 00016
      p.provider = Provider.where(:name => "Farmacêutica")[0]
      p.price = "4,16"
      p.amount = 50
      p.laboratory = "Mantecorp"
    end

    Product.create do |p|
      p.name = "Histamin"
      p.code = 00017
      p.provider = Provider.where(:name => "LIMED MOGI")[0]
      p.price = "5,41"
      p.amount = 100
      p.laboratory = "NEO QUIMICA"
    end

    Product.create do |p|
      p.name = "Coristina D"
      p.code = 00017
      p.provider = Provider.where(:name => "Droga Rápida")[0]
      p.price = "7,15"
      p.amount = 100
      p.laboratory = "Mantecorp"
    end

    Product.create do |p|
      p.name = "Coristina R"
      p.code = 18
      p.provider = Provider.where(:name => "DISDROL")[0]
      p.price = "7,15"
      p.amount = 100
      p.laboratory = "Mantecorp"
    end

    Product.create do |p|
      p.name = "Imosec"
      p.code = 19
      p.provider = Provider.where(:name => "DMED")[0]
      p.price = "6,82"
      p.amount = 100
      p.laboratory = "JANSSEN- CILAG FARMACÊUTICA LTDA."
    end

    Product.create do |p|
      p.name = "Levoxin"
      p.code = 00020
      p.provider = Provider.where(:name => "DMED")[0]
      p.price = "12,20"
      p.amount = 50
      p.laboratory = "APSEN"
    end

    Product.create do |p|
      p.name = "Peprazol"
      p.code = 00021
      p.provider = Provider.where(:name => "Farmashoprio")[0]
      p.price = "15,66"
      p.amount = 50
      p.laboratory = "LIBBS"
    end

    Product.create do |p|
      p.name = "Anandron"
      p.code = 00022
      p.provider = Provider.where(:name => "Suporte Medicamentos")[0]
      p.price = "11,50"
      p.amount = 70
      p.laboratory = "Sanofi Aventis Farmacêutica Ltda "
    end

    Product.create do |p|
      p.name = "Cefaliv"
      p.code = 23
      p.provider = Provider.where(:name => "Sapucaí")[0]
      p.price = "10,70"
      p.amount = 60
      p.laboratory = "ACHÈ"
    end

    Product.create do |p|
      p.name = "Cefalium"
      p.code = 24
      p.provider = Provider.where(:name => "Farmacêutica")[0]
      p.price = "14,10"
      p.amount = 40
      p.laboratory = "ACHÈ"
    end

    Product.create do |p|
      p.name = "Clotrimazol"
      p.code = 25
      p.provider = Provider.where(:name => "DISDROL")[0]
      p.price = "6,34"
      p.amount = 30
      p.laboratory = "NEO QUIMICA"
    end

  end

  def down
    Product.delete_all
  end
end
