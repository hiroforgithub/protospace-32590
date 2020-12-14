
## usersテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| email | string | NOT NULL |
| password | string | NOT NULL |
| name  | string | NOT NULL|
| profile  | text | NOT NULL |
| occupation | text | NOT NULL |
| position | text | NOT NULL|

### Association
- has_many :prototype
- has_many :comments

## prototypeテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title | string | NOT NULL |
| catch_copy | text | NOT NULL |
| concept  | text | NOT NULL|
| user  | references | NOT NULL |

### Association
- belongs_to :user
- has_many :comments

## commentsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text | text | NOT NULL |
| user | reference | NOT NULL |
| prototype  | reference | NOT NULL|

### Association
- belongs_to :prototype
- belongs_to :users
