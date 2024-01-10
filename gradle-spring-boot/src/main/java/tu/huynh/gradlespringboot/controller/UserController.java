package tu.huynh.gradlespringboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import tu.huynh.gradlespringboot.api.UserApi;

@EnableAutoConfiguration
@SpringBootApplication
@Configuration
@ComponentScan
public class UserController implements UserApi {

    @Autowired
    public ResponseEntity<Object> saveUser(@RequestBody(required = false) Object body) {
        return new ResponseEntity<>(HttpStatus.NOT_IMPLEMENTED);
    }
}
