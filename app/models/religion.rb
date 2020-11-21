class Religion < ActiveHash::Base
  self.data = [
      {id: 1, religion: '仏教'},
      {id: 2, religion: '神式'}, {id: 3, religion: 'キリスト教'}, {id: 4, religion: 'イスラム教'},
      {id: 5, religion: '無宗教'},{id: 6, religion: 'その他'}
  ]
end