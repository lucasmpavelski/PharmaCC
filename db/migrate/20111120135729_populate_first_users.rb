class PopulateFirstUsers < ActiveRecord::Migration
  def up
    Role.create!([{:id => 1, :name => "admin"},
                  {:id => 2, :name => "employee"},
                  {:id => 3, :name => "maneger"}])

    User.create! do |u|
      u.id = 0
      u.name = "admin"
      u.email = "a@a.com"
      u.password = 'admin123'
      u.password_confirmation = 'admin123'
      u.roles = Role.where(:name => "admin")
    end
    
    User.create! do |u|
      u.id = 1
      u.name = "empregado"
      u.email = "e@e.com"
      u.password = 'empregado'
      u.password_confirmation = 'empregado'
      u.roles = Role.where(:name => "employee")
    end
    
    User.create! do |u|
      u.id = 2
      u.name = "gerente"
      u.email = "g@g.com"
      u.password = 'gerente'
      u.password_confirmation = 'gerente'
      u.roles = Role.where(:name => "maneger")
    end
  end

  def down
    Role.delete_all
    User.delete(0)
    User.delete(1)
    User.delete(2)
  end
end
