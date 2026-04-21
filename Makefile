INPUT ?= test.mp4

.PHONY: mediamtx
mediamtx:
	mediamtx mediamtx.yml

.PHONY: ffmpeg
ffmpeg:
	ffmpeg -re -stream_loop -1 -i $(INPUT) -c copy -rtsp_transport tcp -f rtsp rtsp://localhost:8554/test
