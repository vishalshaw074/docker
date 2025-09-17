Here I will place all the docker file created


Step by step process of creating a local repository and then creating a respository in github and publishing the code.


I will start by checking if a git repository is already initialized in your workspace.

* git rev-parse --is-inside-work-tree

* git init

* git add ubuntu.dockerfile

* git commit -m "Initial commit: add ubuntu.dockerfile"

Your local file has been committed to a new git repository.

Let's begin by creating the public repository on GitHub.

* curl -H "Authorization: token pat_token" https://api.github.com/user

* curl -H "Authorization: token pat_token" -d '{"name":"docker","private":false}' https://api.github.com/user/repos

Add the remote to your local git repository.
* git remote add origin https://pat_token@github.com/vishalshaw074/docker.git

Push your local commit to GitHub. 
* git push -u origin main

Build image from docker file 
* ocker build -f ubuntu.dockerfile -t myubuntu .

Run the docker image and open bash from ubuntu 
* docker run -it myubuntu bash

Push the image to docker hub
* docker login
* docker tag myubuntu vishalshaw074/myubuntu:latest
* docker push vishalshaw074/myubuntu:latest






