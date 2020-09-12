#親階層
##レディース
if !Category.find_by_id(1)
  ladies_child_array = ['トップス','ジャケット/アウター','パンツ','スカート','ワンピース','靴','ルームウェア/パジャマ','レッグウェア','帽子','バッグ','アクセサリー','ヘアアクセサリー','小物','時計']
  ladies_grandchild_array = [
  ['Tシャツ/カットソー(半袖/袖なし)','Tシャツ/カットソー(七分/長袖)','シャツ/ブラウス(半袖/袖なし)','シャツ/ブラウス(七分/長袖)','ポロシャツ','キャミソール','タンクトップ','ホルターネック','ニット/セーター','チュニック','カーディガン/ボレロ','アンサンブル','ベスト/ジレ','パーカー'],
  ['テーラードジャケット','ノーカラージャケット','Gジャン/デニムジャケット','レザージャケット','ダウンジャケット','ライダースジャケット','ミリタリージャケット','ダウンベスト','ジャンパー/ブルゾン','ポンチョ','ロングコート','トレンチコート','ダッフルコート','ピーコート'],
  ['デニム/ジーンズ','ショートパンツ','カジュアルパンツ','ハーフパンツ','チノパン','ワークパンツ/カーゴパンツ','クロップドパンツ','サロペット/オーバーオール','オールインワン','サルエルパンツ','ガウチョパンツ','その他'],
  ['ミニスカート','ひざ丈スカート','ロングスカート','キュロット','その他'],
  ['ミニワンピース','ひざ丈ワンピース','ロングワンピース','その他'],
  ['ハイヒール/パンプス','ブーツ','サンダル','スニーカー','ミュール','モカシン','ローファー/革靴','フラットシューズ/バレエシューズ','長靴/レインシューズ','その他'],
  ['パジャマ','ルームウェア'],
  ['ソックス','スパッツ/レギンス','ストッキング/タイツ','レッグウォーマー','その他'],
  ['ニットキャップ/ビーニー','ハット','ハンチング/ベレー帽','キャップ','キャスケット','麦わら帽子','その他'],
  ['ハンドバッグ','トートバッグ','エコバッグ','リュック/バックパック','ボストンバッグ','スポーツバッグ','ショルダーバッグ','クラッチバッグ','ポーチ/バニティ','ボディバッグ/ウェストバッグ','マザーズバッグ','メッセンジャーバッグ','ビジネスバッグ','旅行用バッグ/キャリーバッグ'],
  ['ネックレス','ブレスレット','バングル/リストバンド','リング','ピアス(片耳用)','ピアス(両耳用)','イヤリング','アンクレット','ブローチ/コサージュ','チャーム','その他'],
  ['ヘアゴム/シュシュ','ヘアバンド/カチューシャ','ヘアピン','その他'],
  ['長財布','折り財布','コインケース/小銭入れ','名刺入れ/定期入れ','キーケース','キーホルダー','手袋/アームカバー','ハンカチ','ベルト','マフラー/ショール','ストール/スヌード','バンダナ/スカーフ','ネックウォーマー','サスペンダー'],
  ['腕時計(アナログ)','腕時計(デジタル)','ラバーベルト','レザーベルト','金属ベルト','その他']
  ]

  parent = Category.create(name: 'レディース')

  ladies_child_array.each_with_index do |child, i|
    child = parent.children.create(name: child)
    ladies_grandchild_array[i].each do |grandchild|
      child.children.create(name: grandchild)
    end
  end
end
if !User.find_by_id(1)
  user = User.new(last_name: '山田',first_name: '太朗', last_name_kana: 'ヤマダ', first_name_kana: 'タロウ',
  birthday: '2020-01-01', nickname: 'ヤマタロー', tell: '11111111',
  email: 'yamada_taro@japan.com', password: '00000000', password_confirmation: '00000000')
  user.save!
end


if !Image.find_by_id(1)
  image = File.open("./public/images/hebi7.jpg")
end

if !Image.find_by_id(2)
  image = File.open("./public/images/hebi7.jpg")
end

if !Image.find_by_id(3)
  image = File.open("./public/images/hebi7.jpg")
end

if !Image.find_by_id(4)
  image = File.open("./public/images/hebi7.jpg")
end

if !Product.find_by_id(1)
  product = Product.create(name: "apple",price: 1000,explanation: "これはりんごです",quality_id: 1,user_id:1,
  shipping_charge_id: 1,delivery_date_id: 1,trading_status: "出品中",area_id: 1, category_id: 1,images_attributes: [image: image] )
end

if !Product.find_by_id(2)
  product = Product.create(name: "さくら",price: 500,explanation: "これは桜です",quality_id: 1,user_id:1,
  shipping_charge_id: 1,delivery_date_id: 1,trading_status: "購入済",area_id: 1, category_id: 1,images_attributes: [image: image] )
end

if !Product.find_by_id(3)
  product = Product.create(name: "みかん",price: 1700,explanation: "これはみかんです",quality_id: 1,user_id:1,
  shipping_charge_id: 1,delivery_date_id: 1,trading_status: "出品中",area_id: 1, category_id: 1,images_attributes: [image: image] )
end

if !Product.find_by_id(4)
  product = Product.create(name: "いちご",price: 10900,explanation: "これはいちごです",quality_id: 1,user_id:1,
  shipping_charge_id: 1,delivery_date_id: 1,trading_status: "出品中",area_id: 1, category_id: 1,images_attributes: [image: image] )
end


