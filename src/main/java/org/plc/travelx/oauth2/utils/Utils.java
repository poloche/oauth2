package org.plc.travelx.oauth2.utils;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * Created by poloche
 */
public class Utils {

    public static String passwordEncoder(String password){

        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String encodedPassword = passwordEncoder.encode(password);

        return encodedPassword;
    }
}