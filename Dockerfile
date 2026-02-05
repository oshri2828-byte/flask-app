# בסיס קטן ונפוץ
FROM python:3.12-slim

# עבודה בתוך התיקייה בקונטיינר
WORKDIR /app

# מתקינים תלותים (קודם requirements בשביל cache טוב)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# מעתיקים את הקוד
COPY app.py .

# הפורט שהאפליקציה משתמשת בו
EXPOSE 5000

# הרצה
CMD ["python", "app.py"]
