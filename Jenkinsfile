node('worker1') {
stage('Source') {
// Get source code from git repository
git 'https://github.com/satyendra1/simple-gradle-java-app.git'
}
stage('provided oermission'){
    sh 'chmod +x gradlew'
}

stage('Build') {
// Execute gradle build associated with this project.
sh './gradlew build'
}
stage('Docker image build'){
sh 'docker build -t santyrocker/myjavaapp .'
}
}
