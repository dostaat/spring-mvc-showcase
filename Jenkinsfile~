pipeline{
    agent any
    stages{
        stage("Checkout"){
            steps{
                git url: "https://github.com/dostaat/spring-mvc-showcase.git"
            }
        }
        stage("Packaging"){
            steps {
                sh "./mvn package"
            }
        }
        stage("Docker build"){
            steps {
                sh "docker build -t szidom/devops-projekt ."
            }
        }
        stage("Docker login"){
            steps {
                sh "docker login --username=szidom --password=$docker_password"
            }
        }
        stage("Docker push"){
            steps {
                sh "docker push szidom/devops-projekt"
            }
        }
        
        stage("Deploy to Production"){
            steps {
                sh "ansible-playbook playbook.yml -i inventory/production"
            }
        }
        
    }
}
