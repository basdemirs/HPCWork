java -jar /vagrant/cromwell-47.jar server
java -jar /vagrant/cromwell-47.jar  run /vagrant/cromwell-wdls/src/001/myWorkflow.wdl
java -Dconfig.file=/path/to/config.conf -jar cromwell_XYZ.jar [run|server]
java -jar /vagrant/cromwell-47.jar  run /vagrant/cromwell-wdls/src/002/hello-server.wdl --inputs /vagrant/src/cromwell-wdls/002/input.json
