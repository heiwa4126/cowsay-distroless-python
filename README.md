# cowsay-distroless

Google の distroless でマルチステージビルドの練習 (依存がある版)。

[heiwa4126/hello-distroless-python: Google の distroless でマルチステージビルドの練習](https://github.com/heiwa4126/hello-distroless-python)
からの fork

## Docker イメージ のビルドと実行

```sh
hatch run build-docker
hatch run start-docker
```

## コツ

`python3 -m cowsay_distroless` で動くように `__main__.py` を書いておく。
そうしないとパスがめんどくさすぎる。
