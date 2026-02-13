# homebrew-azkv

Homebrew tap for [Azure Key Vault Manager](https://github.com/musukvl/azkv).

## Installation

```bash
brew tap musukvl/azkv
brew install azkv
```

Or in one command:

```bash
brew install musukvl/azkv/azkv
```

## Usage

After installation, run:

```bash
azkv --help
```

### Prerequisites

- Azure CLI (`az`) must be installed and configured
- Run `az login` before using the application

## Uninstall

```bash
brew uninstall azkv
brew untap musukvl/azkv
```

## Formula Updates

The formula is automatically updated with each new release of azkv. To upgrade to the latest version:

```bash
brew upgrade azkv
```

## Issues

If you encounter any issues with the formula or installation, please open an issue on the [main repository](https://github.com/musukvl/azkv/issues).
