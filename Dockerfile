#FROM python:3.8.3-slim
#FROM ubuntu:18.04
FROM continuumio/miniconda3
COPY . /app
WORKDIR /app
RUN apt-get update -y
RUN conda install jupyter -y
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["jupyter", "notebook", "--ip='*'", "--port=5000", "--no-browser", "--allow-root"]

