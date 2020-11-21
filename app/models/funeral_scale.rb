class FuneralScale < ActiveHash::Base
  self.data = [
      {id: 1, scale: '密葬'},
      {id: 2, scale: '家族葬'}, {id: 3, scale: '一般葬'}, {id: 4, scale: '社葬'},
      {id: 5, scale: '葬儀不要'}
  ]
end