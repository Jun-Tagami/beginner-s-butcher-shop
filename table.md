# テーブル設計

## users テーブル

| Column                  | Type     | Options                    |
| ----------------------  | -------- | -------------------------- |
| company-name            | string   | null: false                |
| company-tel             | string   | null: false                |
| email                   | string   | null: false, unique: true  |
| zip-code                | string   | null: false                |
| preferences_id          | integer  | null: false                |
| address                 | string   | null: false                |
| encrypted_password      | string   | null: false                |


### Association
- has_many :addresses
- has_many :reserves
 

## items テーブル

| Column           | Type      | Options                        |
| ---------------- | ----------| ------------------------------ |
| name             | string    | null: false                    |
| amount           | string    | null: false                    |
| price            | integer   | null: false                    |
| detail           | text      | null: false                    |
| locality         | string    | null: false                    |
| expiry-date      | string    | null: false                    |
| preservation     | string    | null: false                    |

### Association
- has_one :reserve
- belongs_to :owner


## orders テーブル

| Column           | Type       | Options                        |
| ---------------- | -----------| ------------------------------ |
| user             | references | null: false, foreign_key: true |
| item             | references | null: false, foreign_key: true |
| amount           | integer    | null: false                    |
| hope_date        | reference  | null: false                    |
| hope_time        | integer    | null: false                    |
| order_name       | string     |                                |
| phone_number     | string     | null: false                    |
| order_zip_code   | string     |                                |
| order_prefecture | integer    |                                |
| address          | reference  |                                |

### Association

- belongs_to :user
- belongs_to :item


## owner テーブル

| Column                | Type      | Options                        |
| --------------------- | ----------| ------------------------------ |
| name                  | string    | null: false                    |
| encrypted_password    | string    | null: false                    |



