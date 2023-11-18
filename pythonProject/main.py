#!/Applications/MAMP/htdocs/SearchArt/pythonProject/venv/bin/Python
import json
import os

from imageai.Detection import ObjectDetection


def main():
    detector = ObjectDetection()
    detector.setModelTypeAsYOLOv3()
    detector.setModelPath("/Applications/MAMP/htdocs/SearchArt/pythonProject/yolo.h5")
    detector.loadModel()

    labels = {}
    for file in os.listdir("/Applications/MAMP/htdocs/SearchArt/upload"):

        if(not file.startswith('.')):
            detections = detector.detectObjectsFromImage(input_image="/Applications/MAMP/htdocs/SearchArt/upload/" + file,output_image_path="/Applications/MAMP/htdocs/SearchArt/upload/nuovo.jpeg",minimum_percentage_probability=30)
            os.remove("/Applications/MAMP/htdocs/SearchArt/upload/nuovo.jpeg")
            tmp_labels = []
            for object in detections :
                if object['name'] not in tmp_labels:
                    tmp_labels.append(object['name'])
            labels[file] = tmp_labels


    return json.dumps(labels)


print(main())