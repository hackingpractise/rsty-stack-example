From rust:1.82

RUN cargo install trunk

WORKDIR /app

COPY . ./

WORKDIR /app/todo_api

CMD ["trunk", "serve"]


