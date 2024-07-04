# cowsay-distroless-python

[Google の distroless](https://github.com/GoogleContainerTools/distroless) でマルチステージビルドの練習 (依存がある版)。
ちゃんと [Hatch](https://hatch.pypa.io/latest/) でパッケージしてある。

[heiwa4126/hello-distroless-python: Google の distroless でマルチステージビルドの練習](https://github.com/heiwa4126/hello-distroless-python)
からの fork。

## Docker イメージ のビルドと実行

前提として docker と hatch が要ります。

```sh
hatch run build-docker
hatch run start-docker
```

## 結果

```console
$ docker images cowsay-distroless

REPOSITORY          TAG       IMAGE ID       CREATED             SIZE
cowsay-distroless   0.0.2     2a2468ed2dc1   10 minutes ago      85.3MB
cowsay-distroless   latest    2a2468ed2dc1   10 minutes ago      85.3MB
cowsay-distroless   0.0.1     dc00cbad4da5   About an hour ago   141MB
```

55MB ぐらい減った。

## コツ

`python3 -m cowsay_distroless` で動くように `__main__.py` を書いた。
そうしないとパスがめんどくさすぎる。
