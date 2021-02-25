package com.dags.simplilearntaskmanager.bootstrap;

import com.dags.simplilearntaskmanager.SimplilearnTaskManagerApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

public class ServletInit extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(SimplilearnTaskManagerApplication.class);
    }
}
