from ultralytics import YOLO

# Build a YOLOv9c model from scratch
model = YOLO('ultimo_modelo/last.pt')

model.train(
    data='ultimo_modelo/data.yaml', 
    optimizer='AdamW',
    epochs=2, 
    imgsz=640, 
    workers=0, 
    device='cuda', 
    save=True, 
    save_period=2, 
    project='/clusteruy/home/edison.estramil/ultimo_modelo/',
    cfg = 'ultimo_modelo/best_hyperparameters.yaml',
    resume= True
)