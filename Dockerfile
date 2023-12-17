# References: https://github.com/reevald/learn-deploy-model-tfserving/blob/main/Dockerfile
FROM tensorflow/serving:2.13.0

# Copy model into image container
# Change sentiment with your project name
COPY ./saved_model /models/sentiment

# Setting environment variables
ENV MODEL_NAME sentiment
ENV MODEL_BASE_PATH /models