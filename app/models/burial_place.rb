class BurialPlace < ActiveHash::Base
  self.data = [
      {id: 1, plase: '先祖代々の墓へ納骨'},
      {id: 2, plase: '新しい墓へ納骨'}, {id: 3, plase: '永代供養'}, {id: 4, plase: '散骨'},
      {id: 5, plase: '樹木葬'}, {id: 6, plase: '希望なし'}
  ]
end