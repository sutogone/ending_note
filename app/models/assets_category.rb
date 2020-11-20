class AssetsCategory < ActiveHash::Base
  self.data = [
      {id: 1, category: '---'},
      {id: 2, category: '預貯金'}, {id: 3, category: '株式'}, {id: 4, category: '有価証券'},
      {id: 5, category: '不動産'}, {id: 6, category: '生命保険'}, {id: 7, category: 'ローン'},
      {id: 8, category: '年金'}, {id: 9, category: 'その他'}
  ]
end