# a. Fetches a Ubuntu image from docker repository
# b. Launches a container from the above image
FROM ubuntu

#c. Installs Python, Pip and all other libraries required by the above script in the container
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-bs4
RUN mkdir /scrapperapp


# d. Copies the script file in the container
COPY Scrapper.py /scrapperapp


ENTRYPOINT ["python3" ,"/scrapperapp/Scrapper.py"]












