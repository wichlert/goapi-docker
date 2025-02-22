== tutorial 
https://www.youtube.com/watch?v=rvJeTVqBSks

==== how to create image file in docker 
0. install golang and docker 
https://go.dev/doc/install
https://docs.docker.com/desktop/setup/install/windows-install/


1. create golang file 

2. create dockerfile 

see simplage tags in 
https://hub.docker.com/_/golang


3. build image file 
- docker build -t demo-go-api 

- docker images (display image file)
4. run docker
- docker -run -d -p 8080:8080 demo-go-api 

go to browser 127.0.0.1:8080

5. display container run 
- docker ps 

6. stop docker 
- docker stop {container id}

7. remove docker image 
- docker rmi -f {contain id}

8. login docker via command line 
- docker login 
9. docker create tag 
- docker tag demo-go-api wich246/go-api-doc:latest

10. docker push image 
- docker push wich246/go-api-doc

11. see my reposities in docker hub 

https://hub.docker.com/repository/docker/wich246/go-api-doc/general

12. pull docker image 
- docker pull mysql
https://hub.docker.com/_/mysql




== how to create gcloud ===
0. create my project in gcloud

https://medium.com/@zippylll1123/%E0%B9%83%E0%B8%8A%E0%B9%89-docker-deploy-%E0%B9%80%E0%B8%A7%E0%B9%87%E0%B8%9A%E0%B9%83%E0%B8%99-gcp-f705ddc394b8


1. build image file in my project in gcloud 
 
  docker build -t asia.gcr.io/akeera-450708/demo-go-api-doc-img_hub_direct .

2. authen gcloud
 
 2.1  gcloud auth login --no-launch-browser
 
 2.2 input password from google authen in browser
 
 
 
3.  push image file to gcloud
 
 docker push asia.gcr.io/akeera-450708/demo-go-api-doc-img_hub_direct 



Ref : https://medium.com/@sirawit/%E0%B8%AA%E0%B9%88%E0%B8%87-docker-image-%E0%B8%82%E0%B8%B6%E0%B9%89%E0%B8%99-google-container-registry-gcr-92a46868a341

=========================

ERROR: error during connect: Head "http://%2F%2F.%2Fpipe%2FdockerDesktopLinuxEngine/_ping
 open //./pipe/dockerDesktopLinuxEngine: The system cannot find the file specified.

---fixed reinstall docker.exe  
 
 docker push wich246/go-api-doc
 
 docker.io/wich246/go-api-doc
 
 
 === create Artifact Registry  Repositories  == 
 
 us-central1-docker.pkg.dev/scenic-alcove-450708-q1/demo-go-api-gc
 
 us-central1-docker.pkg.dev/scenic-alcove-450708-q1/demo-go-api-hub
 
 asia-southeast1-docker.pkg.dev/akeera-450708/demo-go-api-doc-img
 
 === build image ==
 docker build -t  us-central1-docker.pkg.dev/scenic-alcove-450708-q1/demo-go-api-gc .
 
 docker build -t us-central1-docker.pkg.dev/scenic-alcove-450708-q1/demo-go-api-hub . 
 
 
 docker build -t asia-southeast1-docker.pkg.dev/akeera-450708/demo-go-api-doc-img .
 
 docker build -t asia.gcr.io/akeera-450708/demo-go-api-doc-img_hub_direct .
 
 
 docker build -t asia-southeast1-docker.pkg.dev/akeera-450708/demo-go-api-doc-img-hub .
 === push image ==
 docker push  us-central1-docker.pkg.dev/scenic-alcove-450708-q1/demo-go-api-gc 
 
 docker push  us-central1-docker.pkg.dev/scenic-alcove-450708-q1/demo-go-api-hub 
 
 docker push asia-southeast1-docker.pkg.dev/akeera-450708/demo-go-api-doc-img 
 
 docker push  asia-southeast1-docker.pkg.dev/akeera-450708/demo-go-api-doc-img-hub
 
 
 docker push asia.gcr.io/akeera-450708/demo-go-api-doc-img_hub_direct 
 
 === install gcloud login ==
 https://cloud.google.com/sdk/docs/install-sdk
 
 
 == copy this path to verify in browser ==
  https://accounts.google.com/o/oauth2/auth?response_type=code&client_id=32555940559.apps.googleusercontent.com&redirect_uri=http%3A%2F%2Flocalhost%3A8085%2F&scope=openid+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fappengine.admin+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fsqlservice.login+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcompute+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Faccounts.reauth&state=zm6IfUqGCOA2ipz9A4wevpjye83h1U&access_type=offline&code_challenge=pTeZyM8zfzdYtn8HYwCQq5dr-fEOZzVz1fgW75ckUZ0&code_challenge_method=S256
  
  
  
  https://us-central1-docker.pkg.dev/v2/token?scope=repository%3Ascenic-alcove-450708-q1%2Fdemo-go-api-hub%2Fpkg%3Apull&scope=repository%3Ascenic-alcove-450708-q1%2Fdemo-go-api-hub%3Apull%2Cpush&service=us-central1-docker.pkg.dev
  
  
  
  
  https://us-central1-docker.pkg.dev/v2/token?scope=repository%3Ascenic-alcove-450708-q1%2Fdemo-go-api-gc%2Fpkg%3Apull&scope=repository%3Ascenic-alcove-450708-q1%2Fdemo-go-api-gc%3Apull%2Cpush&service=us-central1-docker.pkg.dev/scenic-alcove-450708-q1/demo-go-api-gc
  
  
  
  
  gcloud auth configure-docker
  
  
  projects/714508444741/secrets/dochub_secret
  
  
  dckr_pat_km8526GI94HmfTkNe813NznWlLE
  
  
  
  ==g authen ==
  gcloud auth login --no-launch-browser
  
  == gpass
  4/0ASVgi3IT3Cpk33K18Bydsr7djm1Z754GtdYQArsXnVMWptJZ74cS7_rAMjgwW3sV3lwneQ
  
  
  
  
