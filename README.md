# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# MoneyPlan DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_meny :days

## daysテーブル
|Column|Type|Options|
|------|----|-------|
|spending|integer|default: 0|
|income|integer|default: 0|
|spending_tag_id|string|foreign_key: true|
|income_tag_id|string|foregin_key: true|
|note|text|limit: 30|
|date|date| |
|user_id|integer|foregin_key: true|
|month_id|integer|foregin_key: true|
### Association
- belongs_to :user
- belongs_to :spending_tag
- belongs_to :income_tag
- belongs_to :month

## monthsテーブル
|Column|Type|Options|
|------|----|-------|
|total_spending|integer|default: 0|
|total_income|integer|default: 0|
|budget|integer|default: 0|
|month saving|integer|default: 0|
|target_id|integer|foreign_key: true|
### Association
- has_meny :days
- belongs_to :target

## targetsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text| |
|image|string| |
|money|integer|default: 0|
|remaining money|integer|default: 0|
|total saving|integer|default: 0|
### Association
- has_meny :months

## spending_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|default: "食費"|
### Association
- has_meny :days

## income_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|default: "給料"|
### Association
- has_meny :days
