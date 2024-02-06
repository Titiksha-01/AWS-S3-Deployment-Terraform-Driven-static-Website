# AWS-S3-Deployment-Terraform-Driven-static-Website

Welcome to the AWS S3-Deployment project! This project demonstrates how to deploy a static website on Amazon S3 using Terraform. By leveraging Terraform's infrastructure as code capabilities, we automate the setup of an S3 bucket and deploy a static website seamlessly. This project focuses on deploying a static website on AWS S3, a highly scalable and cost-effective storage service. With Terraform, we automate the entire setup process, including the creation of the S3 bucket, configuration of access controls, and deployment of the static website content.

# Let's Get Started

_Pre-requisites_

Before getting started, ensure that you have the following:
- An AWS account with appropriate permissions to create resources.
- Terraform installed on your local machine.

_Deployment Steps_

- Clone the Repository: Clone this repository to your local machine to access the Terraform scripts and website content.
- Update Terraform Configuration: Navigate to the directory containing the Terraform scripts (*.tf) and update the configuration files with your AWS credentials and desired configurations.
- Initialize Terraform: Run terraform init to initialize the Terraform project and download any necessary dependencies.
- Review Planned Changes: Execute terraform plan to review the planned infrastructure changes and ensure that everything looks correct.
- Deploy Infrastructure: Apply the changes and deploy the infrastructure using terraform apply. Confirm the deployment by entering "yes" when prompted.
- Access the Website: Once the deployment is complete, you can access the static website by navigating to the S3 bucket URL in your web browser.

  # Key Features

- Static Website Creation: We create a static website hosted on Amazon S3, allowing users to access HTML, CSS, JavaScript, and other static files directly from the bucket.
- Terraform Automation: The setup of the S3 bucket and deployment of the static website are automated using Terraform JSON scripts. This ensures consistency and repeatability in deployments.
- Access Control Lists (ACL): We implement access control lists to secure the S3 bucket and regulate access to the website content. This enhances security and ensures that only authorized users can view or modify the website content.
- Ownership Controls: Ownership controls are implemented to facilitate efficient management of the S3 bucket. This ensures that the appropriate permissions are set for managing the bucket resources.


# Conclusion

This project showcases the power of Terraform in automating the deployment of static websites on AWS S3. By leveraging Terraform's infrastructure as code capabilities, we achieve seamless and efficient deployments, enhancing scalability and manageability.
