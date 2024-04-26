from ultralytics import YOLO

# Build a YOLOv9c model from scratch
model = YOLO('yolov9c.pt')

# Display model information (optional)
model.info()

# Train using GPU with reduced batch size and reduced number of workers
results = model.train(data='All.v2.yolov9/data.yaml', epochs=200, imgsz=640, batch=8, workers=4, device='cuda')

# Save weights
model.save_weights('/clusteruy/home/edison.estramil/weights.h5')