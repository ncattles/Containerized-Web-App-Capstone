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

[Describe the key findings or outcomes of your project. Highlight any important insights, challenges, or achievements.]
Screenshots

Docker Image in ECR
![](/Users/ncattles/Desktop/Capstone 2/capstone-aws/images/ECR screenshot.png)

Deployed Applications

![](/Users/ncattles/Desktop/Capstone 2/capstone-aws/images/ECR screenshot.png)

EC2 Instance

![](/Users/ncattles/Desktop/Capstone 2/capstone-aws/images/website screenshot #1.png)
![](/Users/ncattles/Desktop/Capstone 2/capstone-aws/images/website screenshot #2.png)

Dockerfile

![](/Users/ncattles/Desktop/Capstone 2/capstone-aws/images/Dockerfile.png)

CloudFormation Template

![](/Users/ncattles/Desktop/Capstone 2/capstone-aws/images/CloudFormation template.png)

Conclusion


[Provide a brief conclusion or summary of your capstone project, highlighting its significance and impact.]

Feel free to customize and expand upon this template to fit your project's specific details and requirements. Remember to include accurate links to your GitHub repository and any relevant screenshots or documentation.