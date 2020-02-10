docker build -t microblog:latest .

docker run --name microblog -d -p 8000:5000 --rm microblog:latest
