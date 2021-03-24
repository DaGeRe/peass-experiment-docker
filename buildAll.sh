cd peass && mvn clean install -DskipTests && cd ..
cd precision-experiments/precision-analysis && ../gradlew clean publishToMavenLocal && cd ../../
cd precision-experiments/precision-analysis && mvn clean install && cd ../../
cd precision-experiments-rca && mvn clean install && cd ../
