@echo off
:: Stop the running container
echo Stopping the container...
docker stop fastapi-demo

:: Remove the container
echo Removing the container...
docker rm fastapi-demo

:: Build the new image
echo Building the new Docker image...
docker build -t fastapi-demo .

:: Run the updated container
echo Running the new container...
docker run -d -p 3100:3100 --name fastapi-demo fastapi-demo

echo Done! Your FastAPI app is updated and running.
pause
