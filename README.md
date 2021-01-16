# sandbox-ts-grpc
Sandbox for ts and gRPC.

# やりたいこと

- [ ] TypeScriptでgRPCのサーバーを立てて立ててクライアントでコールしてみる
- [ ] gRPCのprotocolBufferから型定義を生成する
- [ ] gRPCとは何か説明できる
- [ ] protocolBufferとは何か説明できる

# 疑問


## protocolBuffer is 何 ?

`.proto` ファイルってなんだろう？typeやinterfaceを書くファイルのように見えるけど.
`service`がinterfaceを表しているように見える。

`.proto`ファイルを元に、クライアントコードとサーバーコードが自動生成される。

## ServiceとかMessageってなに？

Serviceはメソッドぽい。RPCかな？
Messageは引数とかの型？オブジェクト定義ぽい。型エイリアスとか？

## ServerSideのコードを成果物に型を生成できるのか？

これがやりたいこと。

## gRPCにはどんな利点があるのだろう？

利点
- http2が使える
- シリアライズしてバイナリに変換させるので送信データ量が少なくなり高速
- ServerとClientのコードが自動生成されるから？
- ステートフルにな  ？
- Streaming ？
- コードの自動生成による実装コストの削減
- 直接clientからも呼ぶことができる

欠点
- HTTP/2のみしか対応していない
- Swagger EditorのようなIF仕様を分かりやすく表示するツールがない
- gRPC関連のパッケージを複数インストールする必要がある
- 受信側はデータをデシリアライズする必要がある
- パケットをキャプチャしてもデータはシリアライズされているため通信内容の監視がしにくい。つまり、デバッグ辛い。

## gRPC is 何？
gRPCはGoogle謹製のHTTP/2を利用したRPCフレームワーク。
Protocol Buffersを利用し、データをシリアライズして高速なRPCを実現する。

# ツール

## grpc_tools_node_protoc_ts

https://github.com/agreatfool/grpc_tools_node_protoc_ts

> Generate corresponding TypeScript d.ts codes according to js codes generated by grpc_tools_node_protoc.

grpc_tools_node_protocによって生成されたjsコードに応じて、対応するTypeScript d.tsコードを生成するツール。
grpc_tools_node_protocをラップしている。

## grpc-tools

## grpc-js
https://github.com/grpc/grpc-node/tree/master/packages/grpc-js

gRPCで通信を行う際のクライアント。生成されたクライアント内部で使用される。

## ts-protoc-gen
https://github.com/improbable-eng/ts-protoc-gen

grpc_tools_node_protocのプラグイン
TypeScriptの型定義ファイルを生成してくれる。


# 参考

- [How to implement a gRPC client and server in TypeScript | by Mike Christensen | Blokur | Medium](https://medium.com/blokur/how-to-implement-a-grpc-client-and-server-in-typescript-fa3ac807855e)
- [gRPC × Typescript を始めるための一歩 - Qiita](https://qiita.com/ohs30359-nobuhara/items/f11857d5d3d9dbc6637b)
- [gRPC on Node.js with Buf and TypeScript — Part 1 | by Slavo Vojacek | Medium](https://slavovojacek.medium.com/grpc-on-node-js-with-buf-and-typescript-part-1-5aad61bab03b)
- [いまさらだけどgRPCに入門したので分かりやすくまとめてみた - Qiita](https://qiita.com/gold-kou/items/a1cc2be6045723e242eb)
- [Creating a CRUD API with Node, Express, and gRPC - LogRocket Blog](https://blog.logrocket.com/creating-a-crud-api-with-node-express-and-grpc/)
- [gRPC protoc Node.js Client](https://docs.servicestack.net/grpc-nodejs)
- [Quick start | Node | gRPC](https://grpc.io/docs/languages/node/quickstart/)
- [Basics tutorial | Node | gRPC](https://grpc.io/docs/languages/node/basics/)
- [gRPC-Web + React + Node.js + TypeScriptでシンプルなチャットサービスを作る - Qiita](https://qiita.com/aanrii/items/699b4cda0babb3f47a2f)
- [OK Google, Protocol Buffers から生成したコードを使って Node.js で gRPC 通信して | メルカリエンジニアリング](https://engineering.mercari.com/blog/entry/20201216-53796c2494/)
