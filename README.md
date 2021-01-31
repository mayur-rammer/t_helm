# Sample Node App to Docker to Helm

Here I've tried to follow a few best practises on the whole process and shown How can a particular appliication can be Dockrized , Helm chart creation till you successfully push it to a cluster and start receiving actual traffics.
Although in most of the cases Its obvious that there are certain extra configuration are needed.


You can checkout my helm repo [here](https://github.com/saikatharryc/helm).


I have used [this](https://github.com/contentful/the-example-app.nodejs/) repo.

Build Docker Image (The Existing Dockerfile will be used):

`make -f dockerzed/Makefile general`

Build Docker Image with Custom Dockerfile:

`make -f dockerzed/Makefile custom`


Deploy with Helm:

`./deploy.sh` would deploy the application in k8s.
