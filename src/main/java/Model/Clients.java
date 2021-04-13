package Model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Clients {

    //DB Connection
    private Connection DBConnection = new Connection();
    
    //Variables
    private int idClient = 0;
    private String username = "";
    private String name = "";
    private String lastName = "";
    private String address = "";
    private String zipCode = "";
    private String city = "";
    private String state = "";
    private String country = "";
    private String phone = "";
    private String birthDate = null;
    private String email = "";
    private String password = "";

    public Clients(int idClient,String username ,String name, String lastName, String address, String zipCode, String city, String state,
            String country, String phone, String birthDate, String email, String password) {

        setIdClient(idClient);
        setUsername(username);
        setLastName(lastName);
        setName(name);
        setAddress(address);
        setZipCode(zipCode);
        setCity(city);
        setState(state);
        setCountry(country);
        setPhone(phone);
        setBirthDate(birthDate);
        setEmail(email);
        setPassword(password);
    }


    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    
    
    //Getters and Setters
    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
