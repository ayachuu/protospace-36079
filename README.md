## Usersテーブル

| Column     | Type   | Option      |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association

- has_many :phototypes
- has_many :comments

## Phototypesテーブル

| Column     | Type         | Option                        |
| ---------- | ------------ | ----------------------------- |
| title      | string       | null: false                   |
| catch_copy | text         | null: false                   |
| concept    | text         | null: false                   |
| image      |              |                               |
| user       | references   | null: false,foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## Commentsテーブル

| Column    | Type       | Option                        |
| --------- | ---------- | ----------------------------- |
| text      | text       | null: false                   |
| usr       | references | null: false,foreign_key: true |
| phototype | references | null: false,foreign_key: true |

### Association

- belongs_to :user
- belongs_to :phototype
