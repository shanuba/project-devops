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
                     sh'./deploy.sh'
                }
            }
            
                '''
            }
        }
    }  

}

