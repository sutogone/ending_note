class WakePlace < ActiveHash::Base
  self.data = [
      {id: 1, place: '自宅'},
      {id: 2, place: '斎場'}, {id: 3, place: 'ホテル'}, {id: 4, place: 'その他'}
  ]
end