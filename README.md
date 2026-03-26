# AmiVoice Transcriber

AmiVoice API（同期HTTP）を使った音声文字起こしデモ。(最小構成)

## セットアップ

1. `config.example.js` を `config.js` にコピー
2. `config.js` の `YOUR_APPKEY_HERE` を実際の APPKEY に書き換える
3. `my_first_ami.html` をブラウザで直接開く（ローカルファイルで動作）

## AmiVoice API の使用箇所

### UIベース（ブラウザ操作）

| 機能 | 操作 |
|---|---|
| マイク録音 | 録音ボタンを押して話し、再度押して停止 → 自動送信 |
| ファイルアップロード | 「または」エリアに音声ファイルをアップロード → 自動送信 |

### コードベース（`my_first_ami.html`）

| 箇所 | 内容 |
|---|---|
| `sendToAmiVoice(blob)` | AmiVoice API へ音声データを POST するメイン関数 |
| エンドポイント | `https://acp-api.amivoice.com/v1/nolog/recognize`（ログ保存なし・同期HTTP） |
| パラメータ `u` | APPKEY（認証） |
| パラメータ `d` | 使用エンジン（`-a-general`：汎用モデル） |
| パラメータ `a` | 音声データ本体（WebM/Opus または音声ファイル） |
| レスポンス `text` | 認識テキスト |
| レスポンス `results[].confidence` | 認識信頼度（0〜1） |

## APPKEY の取得

[AmiVoice API マニュアル](https://docs.amivoice.com/amivoice-api/manual/getting-started/) のマイページから取得。
