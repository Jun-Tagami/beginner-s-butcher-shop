# テーブル設計

## users テーブル

| Column                  | Type     | Options                    |
| ----------------------  | -------- | -------------------------- |
| company-name            | string   | null: false                |
| company-tel             | string   | null: false                |
| email                   | string   | null: false, unique: false |
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

- belongs_to :kajiyama
- has_one :order

## reserves テーブル

| Column        | Type       | Options                        |
| ------------- | -----------| ------------------------------ |
| user          | references | null: false, foreign_key: true |
| item          | references | null: false, foreign_key: true |
| amount_id     | integer    | null: false                    |
| payment_id    | integer    | null: false                    |

### Association

- belongs_to :user
- has_one :item
- has_one :address


# addresses テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | -------------------------------|
| zip_code          | string     | null: false                    |
| preferences_id    | integer    | null: false                    |
| address           | string     | null: false                    |
| user              | references | null: false, foreign_key: true |
| reserves          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :reserve



