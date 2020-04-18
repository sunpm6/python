FROM python:3 AS builder

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

FROM python:alpine

COPY --from=builder /usr/src/app

EXPOSE 8082

CMD [ "python", "./api.py" ]
