class AddDataToTypes < ActiveRecord::Migration[5.1]
  def up
    Type.create(id: 1, name: 'NFe', code: 'xxx')
    Type.create(id: 2, name: 'GPS', code: 'yyy')
    Type.create(id: 3, name: 'Darf', code: 'zzz')
    Type.create(id: 4, name: 'Taxa', code: 'ttt')
    Type.create(id: 5, name: 'Guia', code: 'www')
  end
end
