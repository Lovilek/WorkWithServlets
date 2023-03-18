package com.example.myfirstservlet;

import java.sql.*;
import java.util.ArrayList;


public class DBManager {


    private static Connection connection;

    static {
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Narxoz", "postgres", "28LovikheL28!");


        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static boolean addFootballer(Footballer football) {
        int rows = 0;
        try {
            PreparedStatement statement = connection.prepareStatement("INSERT INTO footballers (id,name ,surname,salary,club,transferprice,club_country) VALUES (? ,?,?,?,?,?,?)");
            statement.setLong(1, football.getId());
            statement.setString(2, football.getName());
            statement.setString(3, football.getSurname());
            statement.setInt(4, football.getSalary());
            statement.setString(5, football.getClub());
            statement.setInt(6, football.getTransferPrice());
            statement.setLong(7, football.getCountryClub().getId());
            rows = statement.executeUpdate();
            statement.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rows > 0;
    }

    public static ArrayList<Footballer> getAllFootballers() {
        ArrayList<Footballer> footballs = new ArrayList<>();
        try {

            PreparedStatement statement = connection.prepareStatement("SELECT f.id, f.name, f.surname, f.salary, f.club, f.transferprice, f.club_country,c.name AS countryName, c.short_name\n" +
                    "FROM footballers f\n" +
                    "INNER JOIN countries c on c.id = f.club_country");

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {

                footballs.add(new Footballer(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getString("surname"),
                        resultSet.getInt("salary"),
                        resultSet.getString("club"),
                        resultSet.getInt("transferprice"),
                        new Countries(
                                resultSet.getLong("club_country"),
                                resultSet.getString("countryName"),
                                resultSet.getString("short_name")
                        )


                ));

            }
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return footballs;
    }

    public static Footballer getFootballer(Long id) {
        Footballer football = null;
        try {

            PreparedStatement statement = connection.prepareStatement(" " + "SELECT f.id, f.name, f.surname, f.salary, f.club, f.transferprice, f.club_country,c.name AS countryName, c.short_name\n" +
                    "FROM footballers f\n" +
                    "INNER JOIN countries c on c.id = f.club_country " +
                    "WHERE f.id=? " + " ");
            statement.setLong(1, id);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {

                football = new Footballer(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getString("surname"),
                        resultSet.getInt("salary"),
                        resultSet.getString("club"),
                        resultSet.getInt("transferprice"),
                        new Countries(
                                resultSet.getLong("club_country"),
                                resultSet.getString("countryName"),
                                resultSet.getString("short_name")
                        )


                );

            }
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return football;
    }

    public static boolean savePlayer(Footballer football) {
        int rows = 0;
        try {
            PreparedStatement statement = connection.prepareStatement("UPDATE footballers SET id=?,name=?,surname=?,salary=?,club=?,transferprice=?,club_country=? WHERE id=?");
            statement.setLong(1, football.getId());
            statement.setString(2, football.getName());
            statement.setString(3, football.getSurname());
            statement.setInt(4, football.getSalary());
            statement.setString(5, football.getClub());
            statement.setInt(6, football.getTransferPrice());
            statement.setLong(7, football.getCountryClub().getId());
            statement.setLong(8, football.getId());
            rows = statement.executeUpdate();
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return rows > 0;
    }

    public static boolean deletePlayer(Footballer football) {
        int rows = 0;
        try {
            PreparedStatement statement = connection.prepareStatement("DELETE FROM footballers WHERE id=?");
            statement.setLong(1, football.getId());

            rows = statement.executeUpdate();
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return rows > 0;
    }

    public static ArrayList<Footballer> searchFootballer(String club) {
        ArrayList<Footballer> footballs = new ArrayList<>();
        try {

            PreparedStatement statement = connection.prepareStatement("SELECT f.id, f.name, f.surname, f.salary, f.club, f.transferprice, f.club_country,c.name AS countryName, c.short_name\n" +
                    "FROM footballers f\n" +
                    "INNER JOIN countries c on c.id = f.club_country "+
                    "WHERE f.club=?");
            statement.setString(1, club);

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {

                footballs.add(new Footballer(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getString("surname"),
                        resultSet.getInt("salary"),
                        resultSet.getString("club"),
                        resultSet.getInt("transferprice"),
                        new Countries(
                                resultSet.getLong("club_country"),
                                resultSet.getString("countryName"),
                                resultSet.getString("short_name")
                        )


                ));

            }
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return footballs;
    }

    public static ArrayList<Footballer> orderedFootballer() {
        ArrayList<Footballer> footballs = new ArrayList<>();
        try {

            PreparedStatement statement = connection.prepareStatement("SELECT f.id, f.name, f.surname, f.salary, f.club, f.transferprice, f.club_country,c.name AS countryName, c.short_name\n" +
                    "FROM footballers f\n" +
                    "INNER JOIN countries c on c.id = f.club_country "+
                    "ORDER BY f.salary");

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {

                footballs.add(new Footballer(
                        resultSet.getLong("id"),
                        resultSet.getString("name"),
                        resultSet.getString("surname"),
                        resultSet.getInt("salary"),
                        resultSet.getString("club"),
                        resultSet.getInt("transferprice"),
                        new Countries(
                                resultSet.getLong("club_country"),
                                resultSet.getString("countryName"),
                                resultSet.getString("short_name")
                        )


                ));

            }
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return footballs;


    }
    public static ArrayList<Countries> getAllCountries() {
        ArrayList<Countries> countries = new ArrayList<>();
        try {

            PreparedStatement statement = connection.prepareStatement("SELECT * FROM countries ");

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {

                countries.add(
                        new Countries(
                                resultSet.getLong("id"),
                                resultSet.getString("name"),
                                resultSet.getString("short_name")
                        )


                );

            }
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return countries;
    }
    public static Countries getCountry(Long id) {
          Countries country=null;
        try {

            PreparedStatement statement = connection.prepareStatement("SELECT * FROM countries WHERE id=?");
            statement.setLong(1,id);

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {

                country= new Countries(
                                resultSet.getLong("id"),
                                resultSet.getString("name"),
                                resultSet.getString("short_name")



                );

            }
            statement.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return country;
    }
 public static Users getUser(String email){
        Users user=null;
        try {
            PreparedStatement statement=connection.prepareStatement("SELECT * FROM users WHERE email=?");
            statement.setString(1,email);
            ResultSet resultSet=statement.executeQuery();
            if(resultSet.next()){
                user=new Users(
                  resultSet.getLong("id"),
                  resultSet.getString("email"),
                  resultSet.getString("password"),
                  resultSet.getString("full_name")
                );
            }
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
 }
 public static boolean addUser(Users user){
        int rows=0;
        try {
            PreparedStatement statement=connection.prepareStatement("INSERT INTO users (email,password,full_name)"+
                    "VALUES (?,?,?)");
            statement.setString(1,user.getEmail());
            statement.setString(2,user.getPassword());
            statement.setString(3,user.getFullName());
            rows= statement.executeUpdate();
            statement.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return  rows>0;
 }
}

