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

## reserves テーブル

| Column        | Type       | Options                        |
| ------------- | -----------| ------------------------------ |
| user          | references | null: false, foreign_key: true |
| item          | references | null: false, foreign_key: true |
| amount_id     | integer    | null: false                    |
| payment_id    | integer    | null: false                    |
| hope_date     | integer    |                                |
| hope_time     | integer    |                                |
| address       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- belongs_to :address


# addresses テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | -------------------------------|
| zip_code          | string     | null: false                    |
| preferences_id    | integer    | null: false                    |
| address           | string     | null: false                    |
| user              | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :reserve

## owner テーブル

| Column                | Type      | Options                        |
| --------------------- | ----------| ------------------------------ |
| name                  | string    | null: false                    |
| encrypted_password    | string    | null: false                    |

### Association

- has_many :items



