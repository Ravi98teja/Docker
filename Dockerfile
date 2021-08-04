# Docker file, Image, Container
FROM python:3.6
ADD extraction.py .
RUN pip install requests beautifulsoup4

CMD ["python","./extraction.py"]
