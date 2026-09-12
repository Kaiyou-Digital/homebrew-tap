# homebrew-tap

Homebrew tap for distributing [Remarka](https://github.com/Kaiyou-Digital/remarka).

**Note:** this repo holds only the Homebrew Cask manifests (the "how-to" for `brew install`). It is not the app's source; that lives in its own repo.

## Installing

```
brew tap kaiyou-digital/tap
brew install --cask remarka
```

On a first install, Homebrew will refuse the cask with `Refusing to load cask ... from untrusted tap` — that's expected for any third-party tap, not specific to this one. Trust it first:

```
brew trust --cask kaiyou-digital/tap/remarka
brew install --cask remarka
```
