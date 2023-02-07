FROM python:3 

WORKDIR /app 

COPY . . 

RUN pip install flask

# Set environment variable for Flask
ENV FLASK_APP=hello
ENV FLASK_ENV=development

EXPOSE 5000

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
