package za.co.reverside.service.security;

import com.zenerick.service.oauth2.Service;
import org.springframework.boot.SpringApplication;

@Service
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

}
