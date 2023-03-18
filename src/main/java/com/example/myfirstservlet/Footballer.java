package com.example.myfirstservlet;

public class Footballer {
 private    Long id;
    private String name;
    private String surname;
    private int salary;
    private String club;
    private int transferPrice;
    private Countries countryClub;

    public Footballer() {
    }

    public Footballer(Long id, String name, String surname, int salary, String club, int transferPrice, Countries countryClub) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.salary = salary;
        this.club = club;
        this.transferPrice = transferPrice;
        this.countryClub = countryClub;
    }

    public Countries getCountryClub() {
        return countryClub;
    }

    public void setCountryClub(Countries countryClub) {
        this.countryClub = countryClub;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public int getSalary() {
        return salary;
    }

    public String getClub() {
        return club;
    }

    public int getTransferPrice() {
        return transferPrice;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public void setClub(String club) {
        this.club = club;
    }

    public void setTransferPrice(int transferPrice) {
        this.transferPrice = transferPrice;
    }
}
