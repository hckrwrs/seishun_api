# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sex.find_or_create_by(name: '男')
Sex.find_or_create_by(name: '女')

Icon.find_or_create_by(name: 'アヒル', value: "https://cloud.githubusercontent.com/assets/5445377/15267522/cf94f478-19ff-11e6-98e5-686ad8fb320c.jpg")
Icon.find_or_create_by(name: 'ブタ', value: "https://cloud.githubusercontent.com/assets/5445377/15267537/3a88de20-1a00-11e6-84a6-4150e9db5dd7.jpg")
Icon.find_or_create_by(name: 'ヒツジ', value: "https://cloud.githubusercontent.com/assets/5445377/15267538/3a8b04b6-1a00-11e6-9dba-b767e8220d7d.jpg")
Icon.find_or_create_by(name: 'イヌ', value: "https://cloud.githubusercontent.com/assets/5445377/15267539/3a8d680a-1a00-11e6-9d16-3825c0b4bb4e.jpg")
Icon.find_or_create_by(name: 'カバ', value: "https://cloud.githubusercontent.com/assets/5445377/15267540/3b4dee54-1a00-11e6-9cd8-2b403336dee0.jpg")
Icon.find_or_create_by(name: 'ネコ', value: "https://cloud.githubusercontent.com/assets/5445377/15267541/3b6c7a4a-1a00-11e6-9f5a-a381c4ad01d4.jpg")
Icon.find_or_create_by(name: 'ネズミ', value: "https://cloud.githubusercontent.com/assets/5445377/15267542/3b8c5586-1a00-11e6-9ff0-31b29afc0c79.jpg")
Icon.find_or_create_by(name: 'ニワトリ', value: "https://cloud.githubusercontent.com/assets/5445377/15267543/3c1d1814-1a00-11e6-832a-30b6763269c4.jpg")
Icon.find_or_create_by(name: 'パンダ', value: "https://cloud.githubusercontent.com/assets/5445377/15267544/3c45b864-1a00-11e6-8842-051bed89ae6f.jpg")
Icon.find_or_create_by(name: 'ライオン', value: "https://cloud.githubusercontent.com/assets/5445377/15267545/3c87bd0e-1a00-11e6-9e76-e9367807cdbc.jpg")
Icon.find_or_create_by(name: 'サル', value: "https://cloud.githubusercontent.com/assets/5445377/15267546/3d390b86-1a00-11e6-9b00-86c97f0743cb.jpg")
Icon.find_or_create_by(name: 'サムシング', value: "https://cloud.githubusercontent.com/assets/5445377/15267547/3d4fc394-1a00-11e6-991f-c9c4e0cf5d48.jpg")
Icon.find_or_create_by(name: 'トナカイ', value: "https://cloud.githubusercontent.com/assets/5445377/15267548/3d6a8968-1a00-11e6-9c6a-d1417a889435.jpg")
Icon.find_or_create_by(name: 'トラ', value: "https://cloud.githubusercontent.com/assets/5445377/15267549/3d91f1ce-1a00-11e6-9ea7-79cdf08f3d8c.jpg")
Icon.find_or_create_by(name: 'トリ', value: "https://cloud.githubusercontent.com/assets/5445377/15267550/3db9f912-1a00-11e6-9da1-565a0ea5d32d.jpg")
Icon.find_or_create_by(name: 'ウシ', value: "https://cloud.githubusercontent.com/assets/5445377/15267551/3e0f5d8a-1a00-11e6-9898-7ae0829e60b2.jpg")
