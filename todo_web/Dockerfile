FROM rust:1.82

RUN cargo install trunk

WORKDIR /app

COPY . ./

RUN rustup target add wasm32-unknown-unknown

RUN cargo build --release

RUN trunk build --release

CMD ["trunk", "serve", "--release"]

EXPOSE 8080
