ARG BUILD_FROM
FROM $BUILD_FROM

WORKDIR /app

# Install requirements for add-on
# (alpine image)


# py3-pip

# Copy data for add-on
COPY run.sh run.sh
COPY main.py main.py
COPY requirements.txt requirements.txt
COPY . .

RUN pip3 install -r requirements.txt
RUN chmod a+x run.sh

CMD [ "./run.sh" ]
