# app.py
"""
Flask microservice exposing /predict and /retrain,
auto-building the CSV if missing.
"""

import os
import pandas as pd
from flask import Flask, request, jsonify
from sklearn.tree import DecisionTreeClassifier
from joblib import load, dump

from build_training_dataset import build_dataset

app        = Flask(__name__)
MODEL_PATH = "model.pkl"
DATA_PATH  = "data/training_data.csv"

def ensure_csv():
    if not os.path.isfile(DATA_PATH):
        build_dataset(DATA_PATH)

def train_and_save():
    ensure_csv()
    df = pd.read_csv(DATA_PATH)
    X  = df.drop("tech_field_id", axis=1)
    y  = df["tech_field_id"]
    clf = DecisionTreeClassifier(criterion="entropy")
    clf.fit(X, y)
    dump(clf, MODEL_PATH)
    return clf

def get_model():
    return load(MODEL_PATH) if os.path.exists(MODEL_PATH) else train_and_save()

clf = get_model()

@app.post("/predict")
def predict():
    feats = request.json.get("features", [])
    probs = clf.predict_proba([feats])[0]
    labels = clf.classes_.tolist()
    return jsonify(dict(zip(map(int, labels), probs.tolist())))

@app.post("/retrain")
def retrain():
    global clf
    clf = train_and_save()
    return jsonify({"status": "retrained", "classes": clf.classes_.tolist()})

if __name__ == "__main__":
    app.run(
        host="0.0.0.0",
        port=int(os.environ.get("PORT", 5000)),
        debug=True
    )
