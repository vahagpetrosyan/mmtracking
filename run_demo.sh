docker build -f docker/Dockerfile -t mmtracking:latest .
docker run --name mmtracking --gpus all -itd --rm mmtracking:latest
docker exec -it mmtracking bash -c "python demo/demo_mot_vis.py configs/mot/deepsort/sort_faster-rcnn_fpn_4e_mot17-private.py --input demo/demo.mp4 --output mot.mp4"
docker cp mmtracking:/mmtracking/mot.mp4 .