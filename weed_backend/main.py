from fastapi import FastAPI, File, UploadFile
from fastapi.responses import FileResponse
import shutil

from run_inference import run_model

app = FastAPI()

@app.post("/predict")
async def predict(file: UploadFile = File(...)):
    input_path = "input.jpg"

    # Save uploaded image
    with open(input_path, "wb") as buffer:
        shutil.copyfileobj(file.file, buffer)

    # Run ML model
    output_path = run_model(input_path)

    # ✅ RETURN IMAGE INSTEAD OF JSON
    return FileResponse(output_path, media_type="image/jpeg")