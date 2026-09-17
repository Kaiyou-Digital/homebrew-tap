# homebrew-tap

Homebrew tap for Kaiyou Digital's tools:

- [Remarka](https://github.com/Kaiyou-Digital/remarka) (cask — a macOS app)
- [safari-summary](https://github.com/Kaiyou-Digital/SafariSummarizer) (formula — a CLI tool)
- [portwatch](https://github.com/Kaiyou-Digital/portwatch) (formula — a CLI tool)

**Note:** this repo holds only the Homebrew manifests (the "how-to" for `brew install`). It is not any app's source; that lives in each project's own repo.

## Installing

```
brew tap kaiyou-digital/tap
brew install --cask remarka
brew install safari-summary
brew install portwatch
```

On a first cask install (e.g. remarka), Homebrew will refuse it with `Refusing to load cask ... from untrusted tap` — that's expected for any third-party tap, not specific to this one. Trust it first:

```
brew trust --cask kaiyou-digital/tap/remarka
brew install --cask remarka
```
