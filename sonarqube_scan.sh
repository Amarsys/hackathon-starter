#!/bin/bash

# SonarQube Scanner Configuration
SONAR_SCANNER_HOME="/hackathon-starter"
SONAR_HOST_URL="http://localhost:9000"
SONAR_LOGIN_TOKEN="squ_75fc1b22be66e108266ace8132e90d56e3d576b5"

# Git Repository Configuration
GIT_REPO_DIR="/hackathon-starter"
GIT_BRANCH="master"

# SonarQube Scanner Properties
SONAR_SCANNER_PROPERTIES_FILE="/opt/sonar-scanner/conf/sonar-scanner.properties"

# Set SonarQube Scanner Properties
export SONAR_SCANNER_OPTS="-Dsonar.config.file=$SONAR_SCANNER_PROPERTIES_FILE"

# Run SonarQube Scanner
"${SONAR_SCANNER_HOME}/bin/sonar-scanner" \
  -Dsonar.projectKey="nodejs" \
  -Dsonar.projectName="nodejs" \
  -Dsonar.projectVersion="1.0" \
  -Dsonar.sources="${GIT_REPO_DIR}" \
  -Dsonar.sourceEncoding="UTF-8" \
  -Dsonar.host.url="${SONAR_HOST_URL}" \
  -Dsonar.login="${SONAR_LOGIN_TOKEN}" \
  -Dsonar.branch.name="${GIT_BRANCH}"
