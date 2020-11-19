class BloodType < ActiveHash::Base
  self.data = [
    {id: 1, type: 'A型'}, {id: 2, type: 'B型'}, {id: 3, type: 'O型'},
    {id: 4, type: 'AB型'}
  ]
end