package com.topsify.cli;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;


public class Main {


    public static <JSONFileReader> void main(String[] args) throws IOException {
//        System.out.println("Hello World!");
        Path fileName;
        fileName = Paths.get("src", "reports/users_json");




        try {
            ObjectMapper objectMapper = new ObjectMapper();
            objectMapper.readValue()
            List<User> users = new ArrayList<>();


        }

        catch (Exception e) {
            System.out.println(e);
        }
    }
}




