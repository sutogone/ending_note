class FuneralPlace < ActiveHash::Base
  self.data = [
      {id: 1, plase: '自宅'},
      {id: 2, plase: '斎場'}, {id: 3, plase: 'ホテル'}, {id: 4, plase: 'その他'}
  ]
end