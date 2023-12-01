FROM python:3.9
WORKDIR /app
COPY requirements.txt .
EXPOSE 5002
RUN pip install --no-cache-dir -r requirements.txt
COPY ran_main.py .
CMD ["python", "ran_main.py"]