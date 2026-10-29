package com.company;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;

public class ServerSide {
    public static void main(String[] args) {
        ServerSocket serverSocket = null;
        Socket socket = null;
        InputStreamReader inputStreamReader = null;
        OutputStreamWriter outputStreamWriter = null;
        BufferedReader bufferedReader = null;
        BufferedWriter bufferedWriter = null;

        try {
            serverSocket = new ServerSocket(5000);
            System.out.println("Server started. Waiting for client connection...");
            socket = serverSocket.accept();
            System.out.println("Client connected.");

            inputStreamReader = new InputStreamReader(socket.getInputStream());
            outputStreamWriter = new OutputStreamWriter(socket.getOutputStream());
            bufferedReader = new BufferedReader(inputStreamReader);
            bufferedWriter = new BufferedWriter(outputStreamWriter);

            String msgFromClient;
            while ((msgFromClient = bufferedReader.readLine()) != null) {
                System.out.println("Client: " + msgFromClient);
                if (msgFromClient.equalsIgnoreCase("bye")) {
                    bufferedWriter.write("bye");
                    bufferedWriter.newLine();
                    bufferedWriter.flush();
                    break;
                } else {
                    bufferedWriter.write("Message received: " + msgFromClient);
                    bufferedWriter.newLine();
                    bufferedWriter.flush();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (bufferedReader != null) bufferedReader.close();
                if (socket != null) socket.close();
                if (serverSocket != null) serverSocket.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
