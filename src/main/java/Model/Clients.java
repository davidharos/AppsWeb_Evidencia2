package Model;

import java.util.Date;

public class Clients {

    //Variables
    private int idClient = 0;
    private String name = "";
    private String address = "";
    private String zipCode = "";
    private String city = "";
    private String state = "";
    private String country = "";
    private String phone = "";
    private Date birthDate = null;
    private String email = "";
    private String password = "";

    public Clients (int idClient, String name, String address, String zipCode, String city, String state,
                    String country, String phone, Date birthDate, String email, String password ) {

        setIdClient(idClient);
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

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
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
