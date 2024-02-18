This README provides an overview of a basic Terraform project. Please feel free to adapt and expand it to fit your specific needs.

Project Name: SN-Challenge 
Description: Provisioning of basic infrastructure with running "Hello World" Appliction
Author: Andrew Michel Walker 

""Getting Started""

""Prerequisites""

    Terraform: Download: https://github.com/Andrewmclwalker/devops-challenge.git
    Provider SDKs: Install the required provider SDKs based on the cloud platform or service you're using. AWS, Azure etc
    SSH keys; you may use your on public keys to connect to the EC2 and change the keys file as per your own configuration  


""Installation""

    Clone this repository: git clone https://your-github-repo-url.git
    Change directory: cd devops-challenge
""Usage""

    Configure variables: Edit the ""variables.tf"" file to set values for variables use in    the Terraform configuration. You can also use environment variables or command-line flags to override variables.
    
    Initialize Terraform: Run ""terraform init"" to download and configure provider plugins.
    
    Plan: Run ""terraform plan"" to preview the changes Terraform will make to your 
        infrastructure.
    
    Apply: Run ""terraform apply"" to apply the changes.