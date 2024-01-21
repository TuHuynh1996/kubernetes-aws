package tu.huynh.gradlespringboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import tu.huynh.gradlespringboot.api.UserApi;

@RestController
public class UserController implements UserApi {

    @Autowired
    public ResponseEntity<Object> saveUser(@RequestBody(required = false) Object body) {
        return new ResponseEntity<>(HttpStatus.NOT_IMPLEMENTED);
    }
}
