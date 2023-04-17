# Benefits

All done with a multistage Dockerfile, and targeted compose files.

- Speed up development by preventing compose down/up loop
- Easy to maintain
- Dockerfile should never really change
- Setup for in-container development
- Easy switch between development and produciton with a single flag

# Develop (in container)

Run:

```bash
./run.sh -e development
```

Output:

```bash
docker-workflow-server-1  | development server running at http://127.0.0.1:3000/
```

# Production

Run:

```bash
./run.sh -e production
```

Output:

```bash
docker-workflow-server-1  | production server running at http://127.0.0.1:5000/
```
# docker-dev-wokflow-example
# docker-dev-wokflow-example
