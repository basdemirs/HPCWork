task hello {
  String name

  command {
    echo 'Hello ${name}!'
  }
  runtime {
    docker: "ubuntu:latest"
  }
  output {
    File response = stdout()
  }
}

workflow test {
  call hello
}
