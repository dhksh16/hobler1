# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 관리자 계정의 생성 및 역할지정(관리자가 생성된 후 보안상의 이유로 비밀번호는 반드시 다른 것으로 변경하기 바람.)
admin_user = User.create( name: "관리자1", email: 'dhksh16@gmail.com', password: 'dhk2002', confirmed_at: Time.now )
admin_user.add_role :admin

admin_user = User.create( name: "관리자2", email: 'younhj001@gmail.com', password: 'younhj001', confirmed_at: Time.now )
admin_user.add_role :admin

admin_user = User.create( name: "관리자3", email: 'ceju317013@gmail.com', password: 'ceju317013', confirmed_at: Time.now )
admin_user.add_role :admin
