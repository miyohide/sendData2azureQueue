package com.github.miyohide.send_data_to_queue;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class MyApp implements CommandLineRunner {
    private static final Logger LOG = LoggerFactory.getLogger(MyApp.class);

    public static void main(String[] args) {
        SpringApplication.run(MyApp.class, args);
    }

    @Override
    public void run(String... args) {
        LOG.info("***** START command line runner *****");
        LOG.info("***** END command line runner *****");
    }
}
