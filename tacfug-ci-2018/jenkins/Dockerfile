# From:
# https://dzone.com/articles/dockerizing-jenkins-2-setup-and-using-it-along-wit

# ==============================================================================
# You can pull either long term support (LTS) jenkins or cutting edge version
# docker pull jenkins/jenkins:lts
# docker pull jenkins/jenkins
FROM jenkins/jenkins

LABEL author="Jim Priest (priest@thecrumb.com)" 
LABEL description="This will spool up a basic Jenkins box."

# Bypass the login/password wizard - if you don't do this and  are prompted
# for a password - look in the console log after you start this container
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

# automatically installing all plugins (you only need to do this once)
# 1) First start vanilla jenkins container and navigate to:
#   http://localhost:8080/script
# 2) Enter in this script:
# Jenkins.instance.pluginManager.plugins.each{
#   plugin ->
#     println ("${plugin.getShortName()}")
# }
# 3) Save that to plugins.txt
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt

# 4) Then we'll pull that in with install-plugins script
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt


# Build the container
# docker build -t myjenkins .

# Start the container - the --rm will remove the container once it's stopped
# docker run -p 8080:8080 --rm --name myjenkins myjenkins:latest

# Login to Jenkins
# Create new Pipeline
# Pull from SVN: https://svn.tms.icfi.com/svn/DOD_Navy/jenkins
# Setup credentials
# Set file: jenkinsfile-unit.groovy