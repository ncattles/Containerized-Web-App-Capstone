Capstone Project

This is the README file for the Capstone project. It provides an overview of the project, setup instructions, project workflow, key findings, and includes relevant screenshots and documentation.
Project Overview

The Capstone project is focused on deploying a containerized web application on an Amazon EC2 Instance using Docker, Git, and a CloudFormation template for the infrastructure. The project repository can be found on GitHub: https://github.com/ncattles/capstone-2/tree/main

Project Workflow

To complete the project, I first cloned the Git repository provided by my instructor, which contained all the application code. I then made changes to the code, including updating the background image and modifying some text on the main page. To test the Docker image, I manually provisioned an EC2 instance where I installed Git and Docker. Once the testing was successful, I updated the provided CloudFormation template to include SSH access and automated the installation of Git and Docker using user data scripts. After creating the CloudFormation stack, the EC2 instance was automatically set up with Git and Docker. I then SSH'd into the provisioned ec2 instance. I then ran the Git clone command to clone my own repository, built the Docker image using the Dockerfile, and ran a container with my web application code based from the image. By accessing the EC2 instance's IP address, I could view my web app with the implemented changes. Throughout the entire process, I tracked all code and template changes using GitHub for version control.


Setup Instructions:

To set up and run the project locally, please follow these instructions:

1. Clone the Git repository locally:
   ```
   git clone https://github.com/ncattles/capstone-2.git
   ```

2. Navigate to the project directory:
   ```
   cd project-directory
   ```

3. Make the necessary changes to the codebase:
   - Update the background image and modify the desired text on the main page.

4. Test the Docker image:
   - Manually provision an EC2 instance and install Git and Docker.
        '''
        sudo yum install docker
        sudo yum install git
        '''
   - Ensure that the Docker service is running on the EC2 instance.
        '''
        sudo systemctl start docker
        '''
5. Update the CloudFormation template:
   - Modify the provided CloudFormation template to include SSH access from your IP address.
        '''
        - IpProtocol: tcp
          FromPort: 22
          ToPort: 22
          CidrIp: 0.0.0.0/32 # Replace with your IP address
        '''

6. Create the CloudFormation stack:
   - Launch the CloudFormation stack using the updated template.
   - Wait for the stack to complete creation.

7. SSH into the EC2 instance:
   - Obtain the public IP address of the EC2 instance created by the CloudFormation stack.
   - Use SSH to connect to the instance:
     ```
     ssh -i key.pem ec2-user@public-ip
     ```

8. Clone your own repository:
   - Run the following command to clone your repository onto the EC2 instance:
     ```
     git clone <repository-url>
     ```

9. Build the Docker image:
   - Navigate to the cloned repository directory:
     ```
     cd repository-directory
     ```
   - Build the Docker image using the Dockerfile:
     ```
     docker build -t <image-name> .
     ```

10. Run the Docker container:
    - Start a container based on the built image:
      ```
      docker run -d -p 80:80 <image-name>
      ```

11. Access the web application:
    - Open a web browser and enter the EC2 instance's public IP address.
    - You should now be able to view and interact with the web application, which includes the implemented changes.

Please note that these instructions assume you have the necessary credentials and permissions to provision EC2 instances, modify CloudFormation templates, and perform Git operations. Make sure to adapt the commands and URLs provided to match your specific setup and repository details.

Key Findings

Through the project workflow, I successfully made code modifications by updating the background image and text on the main page. Testing the Docker image on a manually provisioned EC2 instance confirmed its functionality and ensured proper containerization. Updating the CloudFormation template with SSH access and automated Git and Docker installations streamlined the provisioning process. By deploying the containerized web application on the EC2 instance and tracking all changes using GitHub, I achieved a successful outcome, showcasing my ability to modify code, containerize applications, provision infrastructure, and maintain version control throughout the project.

Screenshots

Docker Image in ECR

![Docker Image in ECR](./images/ecr.png)

Deployed Applications

![1](./images/website1.png)
![2](./images/website2.png)

EC2 Instance

![1](./images/instance1.png)
![2](./images/instance2.png)

Dockerfile

![Dockerfile](./images/dockerfile.png)

CloudFormation Template

![CloudFormation Template](./images/cloudformation.png)

Conclusion

In conclusion, my capstone project focused on deploying a containerized web application on an Amazon EC2 Instance using Docker, Git, and a CloudFormation template. I successfully completed the project by making code modifications, testing the Docker image, and automating the infrastructure setup. Throughout the project, I demonstrated my ability to utilize key technologies and methodologies, such as version control and containerization, to deploy a functional web application. This project allowed me to gain hands-on experience in provisioning infrastructure, implementing Docker containers, and managing code changes, ultimately showcasing my skills and knowledge in cloud-based application deployment.