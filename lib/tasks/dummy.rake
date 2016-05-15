namespace :dummy do
  desc 'dummy data'
  task create: :environment do
    male = Sex.find_by!(name: '男')
    female = Sex.find_by!(name: '女')

    Icon.all.each do |icon|
      begin
        name = Gimei.name
        GuchiUser.create! name: name.first.katakana, sex: name.male? ? male : female, icon: icon
      rescue
        retry
      end
    end

    Icon.all.each do |icon|
      begin
        name = Gimei.name
        DeaiUser.create! name: name.first.katakana, sexes: [Sex.all.sample], icon: icon
      rescue
        retry
      end
    end

    GuchiUser.all.each do |user|
      contents = ["鼻が詰まってつらい", "先輩ウザい", "恋人と喧嘩した><", "変な人ばっかでもうやだー", "もう人生嫌になった", "はー", "マジでダルい", "あーイヤになってくる"]
      3.times do
        Guchi.create! guchi_user: user, content: contents.sample
      end
    end

    DeaiUser.all.each.with_index do |user, idx|
      contents = ['だいじょうぶ?', '元気出して', '話聞こうか?', 'Hey!そこのカノジョ俺と話さないかい!']
      gu = GuchiUser.find idx+1
      gu.guchis.each do |guchi|
        Reply.create! guchi_user: gu, deai_user: user, guchi: guchi, content: contents.sample, is_guching: false
      end
    end
  end
end
