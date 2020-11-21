class BurialPlace < ActiveHash::Base
  self.data = [
      {id: 1, place: '先祖代々の墓へ納骨'},
      {id: 2, place: '新しい墓へ納骨'}, {id: 3, place: '永代供養'}, {id: 4, place: '散骨'},
      {id: 5, place: '樹木葬'}, {id: 6, place: '希望なし'}
  ]
end