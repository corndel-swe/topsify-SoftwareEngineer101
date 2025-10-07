package com.topsify.cli;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;


public class Main {


    public static <JSONFileReader> void main(String[] args) throws IOException {

        Path fileName;
        fileName = Paths.get("src", "reports/users_json");
        

        try {
            ObjectMapper objectMapper = new ObjectMapper();

        }

        catch (Exception e) {
            System.out.println(e);
        }
    }
}




