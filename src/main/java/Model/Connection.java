package Model;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Connection {

    java.sql.Connection con = null;

    // DB QUERIES
    private static final String SELECT_USER_BY_USERNAME = "SELECT * FROM USERS WHERE USERNAME = ?";
    private static final String INSERT_CLIENT = "INSERT INTO USERS(USERNAME,NAME, LASTNAME, PASSWORD, ADDRESS, ZIP_CODE, CITY, STATE, COUNTRY, PHONE, BIRTH_DATE,EMAIL) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
    private static final String INSERT_ACCOUNT = "INSERT INTO ACCOUNTS(idUSERS,CURRENT_BALANCE, ACC_NUMBER, ACC_TYPE, LAST_UPDATE) VALUES(?,?,?,?,NOW())";
    private static final String SELECT_ALL_ACCOUNTS_BY_ID = "SELECT * FROM ACCOUNTS WHERE idUSERS = ?";

    public java.sql.Connection RetriveConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://bankappdev.cgm7qm3kijhy.us-east-2.rds.amazonaws.com:3306/DB_BANKAPP_DEV?zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL=false", "app_user", "UM^.]t4V");
            Statement statement = con.createStatement();

        } catch (Exception e) {
            System.out.println("RETRIEVE ERROR");
            e.printStackTrace();
        }
        return con;
    }

    public Clients getUserFromDB(String username) {

        Clients client = null;

        try (java.sql.Connection con = RetriveConnection();
                PreparedStatement preparedState = con.prepareStatement(SELECT_USER_BY_USERNAME);) {

            preparedState.setString(1, username);
            System.out.println(preparedState);

            ResultSet result = preparedState.executeQuery();
            while (result.next()) {
                int Id = Integer.parseInt(result.getString("IdUSERS"));
                String name = result.getString("NAME");
                String lastname = result.getString("LASTNAME");
                String address = result.getString("ADDRESS");
                String zipCode = result.getString("ZIP_CODE");
                String city = result.getString("CITY");
                String state = result.getString("STATE");
                String country = result.getString("COUNTRY");
                String phone = result.getString("PHONE");
                String birthDate = result.getString("BIRTH_DATE");
                String email = result.getString("EMAIL");
                String password = result.getString("PASSWORD");

                client = new Clients(Id, username, name, lastname, address, zipCode, city, state, country, phone, birthDate, email, password);
            }

        } catch (SQLException e) {
            System.out.println("SELECT USER ERROR");
            e.printStackTrace();
        }
        return client;
    }

    public Clients insertClient(Clients client) {

        try (java.sql.Connection con = RetriveConnection(); PreparedStatement preparedState = con.prepareStatement(INSERT_CLIENT, Statement.RETURN_GENERATED_KEYS);) {

            preparedState.setString(1, client.getUsername());
            preparedState.setString(2, client.getName());
            preparedState.setString(3, client.getLastName());
            preparedState.setString(4, client.getPassword());
            preparedState.setString(5, client.getAddress());
            preparedState.setString(6, client.getZipCode());
            preparedState.setString(7, client.getCity());
            preparedState.setString(8, client.getState());
            preparedState.setString(9, client.getCountry());
            preparedState.setString(10, client.getPhone());
            preparedState.setString(11, client.getBirthDate());
            preparedState.setString(12, client.getEmail());

            System.out.println(preparedState);

            int result = preparedState.executeUpdate();

            try (ResultSet generatedKeys = preparedState.getGeneratedKeys()) {
                if (generatedKeys.next()) {

                    int generatedId = (int) generatedKeys.getLong(1);

                    client.setIdClient(generatedId);
                } else {
                    throw new SQLException("Creating user failed, no ID obtained.");
                }
            }

        } catch (SQLException e) {
            System.out.println("INSERT INTO USER ERROR");
            e.printStackTrace();
        }
        return client;
    }

    public Accounts insertAccount(Accounts account) {
        try (java.sql.Connection con = RetriveConnection(); PreparedStatement preparedState = con.prepareStatement(INSERT_ACCOUNT, Statement.RETURN_GENERATED_KEYS);) {

            preparedState.setInt(1, account.getFk_idClient());
            preparedState.setFloat(2, account.getBalance());
            preparedState.setInt(3, account.getIdAccount());
            preparedState.setString(4, account.getAccountType());

            System.out.println(preparedState);

            int result = preparedState.executeUpdate();

            try (ResultSet generatedKeys = preparedState.getGeneratedKeys()) {
                if (generatedKeys.next()) {

                    int generatedId = (int) generatedKeys.getLong(1);
                    account.setIdRef(generatedId);
                } else {
                    throw new SQLException("Creating user failed, no ID obtained.");
                }
            }

        } catch (SQLException e) {
            System.out.println("INSERT INTO ACCOUNTS ERROR");
            e.printStackTrace();
        }
        return account;
    }

    public List<Accounts> selectAllAccounts(int id) {
        List<Accounts> accounts = new ArrayList<>();

        try (java.sql.Connection con = RetriveConnection();
                PreparedStatement preparedState = con.prepareStatement(SELECT_ALL_ACCOUNTS_BY_ID);) {

            preparedState.setInt(1, id);
            System.out.println(preparedState);

            ResultSet result = preparedState.executeQuery();
            while (result.next()) {
                
                int idUsers = result.getInt("idUSERS");
                float balance = result.getFloat("CURRENT_BALANCE");
                int accountNumber = result.getInt("ACC_NUMBER");
                String accountType = result.getString("ACC_TYPE");
                int idPrimary = result.getInt("idACCOUNTS");
                
                accounts.add(new Accounts(idUsers,accountNumber, accountType,balance,idPrimary));
            }

        } catch (SQLException e) {
            System.out.println("SELECT ACCOUNTS ERROR");
            e.printStackTrace();
        }

        return accounts;
    }

}
