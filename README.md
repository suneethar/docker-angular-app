# Development server
Run ng serve for a dev server. Navigate to http://localhost:4200/. The app will automatically reload if you change any of the source files.

# Build
Run ng build to build the project. The build artifacts will be stored in the dist/ directory. Use the --prod flag for a production build.

# Building the Docker image from the Dockerfile
docker build -t angular .

# Starting a Docker container from our image
docker run -p 80:80 --name angular-container -d angular

Navigate to http://localhost:80 to check the app.

# Starting our container using Docker-compose
docker-compose up
