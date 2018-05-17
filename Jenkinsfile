stage('Build Base Container') {
    node {
        deleteDir()

        checkout scm

        dockerBuild file: './node8-base/Dockerfile',
            tags: [
                'germaniumhq/node8-base:latest',
                'germaniumhq/node8-base:8',
                'germaniumhq/node8-base:8.11'
            ]
    }
}

stage('Build Containers') {
    node {
        deleteDir()

        checkout scm

        dockerBuild file: './node8-build/Dockerfile',
            tags: [
                'germaniumhq/node8-build:latest',
                'germaniumhq/node8-build:8',
                'germaniumhq/node8-build:8.11'
            ]
    }
}
