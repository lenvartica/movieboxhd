# Installation

Decan Movie is currently built from source. Prebuilt release packages will be added to the [GitHub Releases](https://github.com/lenvartica/movieboxhd/releases) page when published.

## Requirements

- Rust 1.90 or newer.
- A local media player: `mpv`, `VLC`, or `IINA` on macOS.
- `yt-dlp` and `ffmpeg` only for MovieBox DASH downloads.

## Build from Source

```bash
git clone https://github.com/lenvartica/movieboxhd.git
cd movieboxhd
cargo build --release --locked
```

The executable is `target/release/decan-movie` on macOS and Linux, or `target\release\decan-movie.exe` on Windows.

To install the executable into Cargo's binary directory:

```bash
cargo install --path . --locked
```

Then run:

```bash
decan-movie
```

## Updating

To update a source checkout, pull the latest changes and rebuild:

```bash
git pull
cargo install --path . --locked --force
```

Once prebuilt releases are available, use the platform-specific installer linked from the Releases page.

## Uninstalling

If installed with Cargo:

```bash
cargo uninstall decan-movie
```

User configuration, favorites, and history remain in the existing `moviebox-tui` data directories to preserve compatibility.
