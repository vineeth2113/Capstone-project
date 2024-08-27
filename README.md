![image](https://github.com/user-attachments/assets/ba0fe5d4-f10c-4955-b682-a4be693a97ab)# Guvi-Devops_Project_vineeth
Welcome to the page.
Here I am going to demonstrate the Application Deployment.

**Step - 1**
**: Cloning the application repository.**
<br> creating a empty repository in git and clonning it to the local. <br/>
<br>**comand used:** "git clone https://github.com/vineeth2113/Guvi-Devops_Project_vineeth.git"<br/>
pushing the application changes to the git hub repo. 

<br>**Step - 2 Dockerizing the application** <br/>
* Creating the docker file.
*  Creating the docker compose file.<br/>

<br> **Step -3 creating the build.sh and deploy.sh** <br />
<br> **Step - 4 configured the jenkins build** and created a multibranch pipeline two handle two branches <br/>
![image](https://github.com/user-attachments/assets/c7f28c57-4cb8-416f-80b5-2d1f69481dc1)

![image](https://github.com/user-attachments/assets/a7d0e9f9-7e7e-4839-9458-becb0513d1ca)

![image](https://github.com/user-attachments/assets/71788fcd-ec18-4c4c-877f-db6b1ba1c903)

webhook settings
![image](https://github.com/user-attachments/assets/e5667a74-1c60-42d8-b1a6-00ff19b7ae49)

Pipeline configuration:
![image](https://github.com/user-attachments/assets/f14fc77d-a535-4b0d-8a51-4d3ca3944650)
![image](https://github.com/user-attachments/assets/94f64f8b-8050-4c93-b8d7-8c4bd2c2b27c)

DEV branch:
![image](https://github.com/user-attachments/assets/5ba1b7cf-46b7-494d-a216-d24e31607dd1)

Main Branch:
![image](https://github.com/user-attachments/assets/1c29c07d-2d9c-42f1-a95e-da41b74df973)

<br> **Step - 5 deployed the build** <br/>
Deployed URL:http://54.205.238.45:80/
 ![image](https://github.com/user-attachments/assets/b773f5e5-66e0-4519-8066-5157c4652d3d)

![image](https://github.com/user-attachments/assets/3c5edf3e-12c2-4a89-a7d2-60a244de17ba)

Prod image: docker pull vineeth2108/capstone-production:latest

![image](https://github.com/user-attachments/assets/43b81c7c-a48c-4a83-9a61-94beedeb9a4d)


<br> **Step - 6 created alarms and created the monitoring** <br/>
AWS CONFIG
Security group:
Port 80: Deployment.
Port 9090: Prometheus.
Port 3000: Grafana
Port 8080: Jenkins.
Monitoring Prometheus and Grafana

![image](https://github.com/user-attachments/assets/483d68ba-8893-469b-838d-4aa37dc754d0)


