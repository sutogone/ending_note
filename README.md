# README

## usersテーブル

| Column         | Type    | Options  |
| -------------- | ------- | -------- |
| medical_record | integer | NOT NULL |
| password       | string  | NOT NULL |

### Association
- has_one :basic_information
- has_many :pets
- has_many :contacts
- has_many :funerals
- has_many :assets

## basic_informationテーブル

| Column          | Type       | Options                    |
| --------------- | ---------- | -------------------------- |
| user            | references | NOT NULL, foreign_key:true |
| last_name       | string     | NOT NULL                   |
| first_name      | string     | NOT NULL                   |
| last_name_kana  | string     | NOT NULL                   |
| first_name_kana | string     | NOT NULL                   |
| birthday        | date       | NOT NULL                   |
| postal_code     | string     | NOT NULL                   |
| prefecture_id   | integer    | NOT NULL                   |
| city            | string     | NOT NULL                   |
| address         | string     | NOT NULL                   |
| building        | string     |                            |
| blood_type_id   | integer    | NOT NULL                   |

### Association
- belongs_to :user
- belongs_to_active_hash :blood_type
- belongs_to_active_hash :prefecture

## petsテーブル

| Column      | Type       | Options                    |
| ----------- | ---------- | -------------------------- |
| user        | references | NOT NULL, foreign_key:true |
| pet_name    | string     |                            |
| pet_breed   | string     |                            |
| pet_age     | integer    |                            |
| pet_details | text       |                            |

### Association
- belongs_to :user

## contactsテーブル

| Column               | Type       | Options                    |
| -------------------- | ---------- | -------------------------- |
| user                 | references | NOT NULL, foreign_key:true |
| acquaintance_name    | string     |                            |
| acquaintance_contact | integer    |                            |
| acquaintance_details | text       |                            |

### Association
- belongs_to :user

## funeralsテーブル

| Column              | Type       | Options                    |
| ------------------- | ---------- | -------------------------- |
| user                | references | NOT NULL, foreign_key:true |
| chief_mourner       | text       |                            |
| reservation         | string     |                            |
| religion_id         | integer    |                            |
| funeral_scale_id    | integer    |                            |
| funeral_expenses_id | integer    |                            |
| wake_place_id       | integer    |                            |
| funeral_place_id    | integer    |                            |
| burial_place_id     | integer    |                            |

### Association
- belongs_to :user
- belongs_to_active_hash :religion
- belongs_to_active_hash :funeral_scale
- belongs_to_active_hash :funeral_expenses
- belongs_to_active_hash :wake_place
- belongs_to_active_hash :funeral_place
- belongs_to_active_hash :burial_place

## assetsテーブル

| Column             | Type       | Options                    |
| ------------------ | ---------- | -------------------------- |
| user               | references | NOT NULL, foreign_key:true |
| assets_category_id | integer    |                            |
| financial          | string     |                            |
| branch_name        | string     |                            |

### Association

- belongs_to :user
- belongs_to_active_hash :assets_category