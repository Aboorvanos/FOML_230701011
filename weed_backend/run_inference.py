import os
import numpy as np
import tensorflow as tf
from PIL import Image
from object_detection.utils import label_map_util
from object_detection.utils import visualization_utils as viz_utils

# Paths (keep model + labels fixed)
PATH_TO_MODEL = "C:/Users/91984/models/exported_model/saved_model"
PATH_TO_LABELS = "C:/Users/91984/dataset/label_map.pbtxt"
PATH_TO_OUTPUT = "C:/Users/91984/dataset/test_images/output.jpg"

# Load model ONLY ONCE (important for speed)
detect_fn = tf.saved_model.load(PATH_TO_MODEL)

# Load label map
category_index = label_map_util.create_category_index_from_labelmap(
    PATH_TO_LABELS, use_display_name=True
)

# 🔥 MAIN FUNCTION
def run_model(image_path):

    # Load image
    image_np = np.array(Image.open(image_path))

    # Convert image to tensor
    input_tensor = tf.convert_to_tensor(image_np)
    input_tensor = input_tensor[tf.newaxis, ...]

    # Run detection
    detections = detect_fn(input_tensor)

    # Get boxes, classes, and scores
    boxes = detections['detection_boxes'][0].numpy()
    classes = detections['detection_classes'][0].numpy().astype(np.int32)
    scores = detections['detection_scores'][0].numpy()

    print("Top 10 scores:", scores[:10])
    print("Top 10 classes:", classes[:10])

    # Draw bounding boxes
    image_with_boxes = image_np.copy()
    viz_utils.visualize_boxes_and_labels_on_image_array(
        image_with_boxes,
        boxes,
        classes,
        scores,
        category_index,
        use_normalized_coordinates=True,
        max_boxes_to_draw=10,
        min_score_thresh=0.05
    )

    # Save output image
    output_image = Image.fromarray(image_with_boxes)
    output_image.save(PATH_TO_OUTPUT)

    print("✅ Done! Output saved at:", PATH_TO_OUTPUT)

    return PATH_TO_OUTPUT


# 🔧 TEST BLOCK (for VS Code run)
if __name__ == "__main__":
    test_image = "C:/Users/91984/dataset/test_images/test1.jpg"
    run_model(test_image)