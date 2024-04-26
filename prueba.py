from  ultralytics import YOLO

# Build a YOLOv9c model from scratch
model = YOLO('yolov9c.pt')

# Display model information (optional)
model.info()

results = model.train(data='All.v2.yolov9/data.yaml', epochs=200, imgsz=640)

model.save_weights('weights.h5')
