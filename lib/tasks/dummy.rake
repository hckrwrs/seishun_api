namespace :dummy do
  desc 'dummy data'
  task create: :environment do
    guchi = Gimei.male
    GuchiUser.create! name: guchi.kanji, sex: Sex.find_by!(name: '男'), icon: Icon.all.sample

    guchi = Gimei.female
    GuchiUser.create! name: guchi.kanji, sex: Sex.find_by!(name: '女'), icon: Icon.all.sample
  end
end
