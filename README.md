# Gallery
To build image
```bash
docker build -t gallery:0.2 .
```

To start server
```bash
docker run -v ${pwd}:/app -p 4000:4000 gallery:0.2 exec jekyll serve -H 0.0.0.0 -P 4000
```

To build
```bash
docker run -v ${pwd}:/app gallery:0.2 exec jekyll build
```