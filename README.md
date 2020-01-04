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
- has_one :target

## inputsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|foregin_key: true|
|month_id|integer|foregin_key: true|
### Association
- belongs_to :user
- has_meny :income_values
- has_meny :cost_values
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
- has_meny :inputs
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
- has_one :user

## income_valuesテーブル
|Column|Type|Options|
|------|----|-------|
|date|date| |
|value|integer|default: 0|
|description|string|
|input_id|integer|foreign_key: true|
### Association
- has_meny :incomes
- belongs_to :input

## incomesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|description|string|limit: 30|
|income_value_id|integer|foreign_key: true|

### Association
- belongs_to :income_value

## cost_valuesテーブル
|Column|Type|Options|
|------|----|-------|
|date|date| |
|value|integer|default: 0|
|description|string|
|input_id|integer|foreign_key: true|
### Association
- has_meny :costs
- belongs_to :input

## costsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|description|string|limit: 30|
|cost_value_id|integer|foreign_key: true|

### Association
- belongs_to :cost_value
