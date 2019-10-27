import "sub_wdl.wdl" as sub

workflow main_workflow {

    call sub.hello_and_goodbye { input: hello_and_goodbye_input = "sub world" }

    call myTask { input: name = hello_and_goodbye.hello_output }

    output {
        String main_output = hello_and_goodbye.hello_output
    }
}

task myTask {
    String name
    command {
	echo 'Hello ${name}!'
    }
    runtime {
      docker: "ubuntu:latest"
    }
    output {
        String out = read_string(stdout())
    }
}

