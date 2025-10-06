package com.topsify.cli;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;


public class Main {


    public static void main(String[] args) throws IOException {
//        System.out.println("Hello World!");

       Path path = new Path();
       path.getFileName("reports", "users.json");


        try {
            ObjectMapper objectMapper = new ObjectMapper();


        }

        catch (Exception e) {
            System.out.println(e);
        }
    }
}




