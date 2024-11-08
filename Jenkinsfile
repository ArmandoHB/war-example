pipeline {
	agent any
	tools {
		maven 'maven_3_8_5'
	}

	parameters {
		choice(name: 'DEPLOY_ENVIRONMENT', choices: ['tomcat2', 'tomcat3'], description: 'Ambiente de despliegue')
	}

	stages {
		stage('PackageDocker') {
			steps {
				bat 'mvn -B -q -P docker-build clean package'
			}
		}
		stage('Deploy') {
			steps {
				bat 'copy target\\ROOT.war D:\\devenv\\software\\' + params.DEPLOY_ENVIRONMENT + '\\apache-tomcat-9.0.96\\webapps'
			}
		}
	}
}
