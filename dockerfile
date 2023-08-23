FROM ubuntu

#ADD app.py app.py
#ADD manager.py manager.py

COPY requirement.txt . 
COPY ./ .
COPY pyproject.toml /app
#COPY Makefile .

RUN apt-get update
RUN apt-get -y install python3.11
RUN apt-get -y install python3-pip
RUN pip3 install -r requirement.txt
# RUN pip3 install poetry
# RUN poetry lock [--no-update]
# RUN poetry install


EXPOSE 8000

CMD ["python3","manager.py", "start"]


#https://github.com/python-poetry/poetry/issues/3412 { poetry install issue }


#So there are 2 things which might be wrong when it comes to using poetry:
#1. Poetry have some issues with macos ARM chip
#2. Poetry is using python version 3.10 wherein your system is on 3.11
#3. Cache issues - Tried to resolve this by clearning out cache but still didn't work. 