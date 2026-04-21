# rtsp-server

Local RTSP server for development and testing, backed by [MediaMTX](https://github.com/bluenviron/mediamtx) with an `ffmpeg` helper that loops a local video file into the stream.

## Prerequisites

- `mediamtx` on your `PATH`
- `ffmpeg` on your `PATH`
- A source video at `test.mp4` (or override with `INPUT=...`)

## Usage

In one terminal, start the server:

```sh
make mediamtx
```

In another, publish the looping video to `rtsp://localhost:8554/test`:

```sh
make ffmpeg
# or with a different source
make ffmpeg INPUT=path/to/video.mp4
```

Play the stream with any RTSP client, e.g.:

```sh
ffplay rtsp://localhost:8554/test
```

## Configuration

Server behavior is controlled by `mediamtx.yml` (TCP + UDP transports, wildcard path).
