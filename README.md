<div align="center">

# Decan Movie

**A terminal app to find, download, and stream movies, TV shows, and live TV using local media players.**

[ English ](README.md) • [ বাংলা ](README_BN.md) • [ हिन्दी ](README_HI.md) • [ Español ](README_ES.md)

[![License](https://img.shields.io/badge/license-MIT%2FApache--2.0-blue.svg?style=flat)](#license)
</div>

Decan Movie is a rebranded continuation of [MovieBox-TUI](https://github.com/mesamirh/MovieBox-Tui). The upstream project's license and notices are preserved in this repository.

## Features

- **Streaming:** Movies, TV series, anime, Asian dramas, and community Stremio addons across multiple providers.
- **Live TV:** M3U playlist import with channel categories, EPG support, and search.
- **Resolution Picker:** Select stream quality (`4K`, `1080p`, `720p`, `480p`, or `Auto`) before playback.
- **Hardware Players:** Launch streams in `mpv`, `VLC`, or `IINA` with custom auth headers and cookies.
- **Batch Downloader:** Concurrent downloads with pause and resume for episodes and full seasons.
- **Subtitles:** Select subtitle tracks before playback or download.
- **Terminal UI:** Vim navigation, mouse interaction, slash commands (`/help`, `/settings`), and built-in themes.
- **Resume & Library:** Continue watching, history, and favorites stored locally. No telemetry.

## Requirements

- Rust 1.90 or newer to build from source.
- `mpv`, `VLC`, or `IINA` for playback.
- `yt-dlp` and `ffmpeg` only for MovieBox DASH downloads.

## Install

### Windows

Run this in PowerShell to install the latest release:

```powershell
irm https://raw.githubusercontent.com/lenvartica/movieboxhd/main/install.ps1 | iex
```

The installer places `decan-movie.exe` in your user programs folder and adds it to your user `PATH`; no administrator access is needed. Open a new terminal if the `decan-movie` command is not recognized immediately. To review the script before running it, download it first with `irm https://raw.githubusercontent.com/lenvartica/movieboxhd/main/install.ps1 -OutFile install.ps1`, then inspect and run `.\install.ps1`.

### Build from source

Install Rust 1.90 or newer, then clone this repository and build the executable:

```bash
git clone https://github.com/lenvartica/movieboxhd.git
cd movieboxhd
cargo build --release --locked
```

The executable is created at `target/release/decan-movie` (`target\release\decan-movie.exe` on Windows). To install it into Cargo's binary directory, run `cargo install --path . --locked`. Prebuilt downloads for Windows, Linux, macOS, and Android are available from [GitHub Releases](https://github.com/lenvartica/movieboxhd/releases).

## Quick Start

- Type to search, then press `Enter` to play.
- Press `?` for shortcuts, or type `/settings` to open preferences.

## Documentation

See [`docs/`](docs/) for feature and configuration guides:

| Guide | Description |
| :--- | :--- |
| [Keyboard & Controls](docs/controls.md) | Keybindings, navigation, and shortcuts |
| [Configuration](docs/config.md) | Settings, themes, and environment variables |
| [Content Providers](docs/providers.md) | Available streaming sources |
| [Stremio Addons](docs/addons-mode.md) | Community addon configuration |
| [Hardware Players](docs/players.md) | Player detection and launch options |
| [Live TV & IPTV](docs/tv-mode.md) | M3U playlists, EPG, and live playback |
| [Batch Downloads](docs/downloads.md) | Download, pause, and resume |

## Privacy

There is no telemetry, analytics, or user tracking. History, favorites, and configuration remain on your device.

## License and Attribution

This project is distributed under the terms of the existing [MIT](LICENSE-MIT) or [Apache-2.0](LICENSE-APACHE) license. The original MovieBox-TUI project and its notices are acknowledged; see the source repository for attribution.

## Disclaimer

Decan Movie does not host or store media. Users are responsible for ensuring their use of streaming sources complies with applicable laws and licenses.
