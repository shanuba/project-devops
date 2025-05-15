pipeline{
    agent any

    environment{
        branchname="${env.BRANCH_NAME}"
        }
        stages{
            stage('Checkout'){
                steps{
                    checkout scm
                }
            }
            stage('Execution permission to script'){
                steps{
                    sh '''
                    chmod +x build.sh
                    chmod +x deploy.sh
                '''
                }
            }
            stage('Build & Push Docker image'){
                steps{
                    sh'./build.sh'
                }
            }
            stage('pull the pushed image and deploy to EC2'){
            steps{
            sh '''
            scp -o StrictHostKeyChecking=no -i /var/lib/jenkins/.ssh/shanu.pem deploy.sh linux@3.147.77.141:/home/linux/
            ssh -o StrictHostKeyChecking=no -i /var/lib/jenkins/.ssh/shanu.pem ec2-user@3.147.77.141 "BRANCH_NAME=${BRANCH_NAME} bash /home/linux/deploy.sh"
                '''
            }
        }
    }  

}

