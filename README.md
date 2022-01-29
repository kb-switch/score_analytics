# score_analytics

・目的
データ分析アプリを作成->スコアを可視化して統計的に分析

・顧客の操作想定
①「ローカルにvscodeインストールしてもらって(それかdocker)
git cloneしたあとにプロジェクト立ち上げるコマンド打ってもらって」
->プログラミング知識なくてもいいように作業の流れformatを簡単に作る
②「画面に遷移したらスコア記入したり云々、、、」
->ここは直感的に操作できるような仕様にすれば良い
③「作業が終了したらプロジェクト終了コマンド打ってもらって作業完了」

・仕様(雑)
①パーソナル
- 得点表作成&加工->グラフ
  - 名前を選んだらそのグラフが表示される仕様にしたい(要は検索)
  - 前回状態の結果を保存しつつ、新規が来たらappendしていく仕様にしたい(appendのときだけ実行)
    - djangoで「ログイン画面」->「生徒検索(ドロップダウン)」->「前回結果及びスコア入力欄」->「登録or更新するとappendした結果表示」->「削除機能もどこかに」
       ていうのを余裕があれば作りたい
    - 上記枠組みが完成したら、統計を組み込む(各言葉の定義やどういう時に何を使ったら良いかなどの説明まで入れられたら、、、) 
- 各スコアの標準化(相対的数値の比較)->教科間の数値比較
- 試験範囲、、、(分野別にどうかとか)

②全体
- 学校(いくしん)のテスト
  - 学校内の生徒ごとにスコア縦積み->前回と今回比較->2標本t検定？
  - 分布の推定
  - describe&boxplot記載
- 小テスト
  - 英語onlyでええな
  - 質が担保されているか(各回のスコアの比較により)
  - >記述統計学をふんだんに利用(相対度数で各回のスコアの分布を比較する)
