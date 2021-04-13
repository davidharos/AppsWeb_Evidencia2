package Model;

public class Accounts {

    //Variables
    private int idRef = 0;
    private int fk_idClient = 0;
    private int idAccount = 0;
    private String accountType;
    private float balance;

    public Accounts (int fk_idClient, int idAccount, String accountType, float balance, int idRef){

        setFk_idClient(fk_idClient);
        setIdAccount(idAccount);
        setAccountType(accountType);
        setBalance(balance);
        setIdRef(idRef);
    }


    //Getters and Setters
    public int getFk_idClient() {
        return fk_idClient;
    }

    public void setFk_idClient(int fk_idClient) {
        this.fk_idClient = fk_idClient;
    }

    public int getIdRef() {
        return idRef;
    }

    public void setIdRef(int idRef) {
        this.idRef = idRef;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public float getBalance() {
        return balance;
    }

    public void setBalance(float balance) {
        this.balance = balance;
    }
    
    public int getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(int idAccount) {
        this.idAccount = idAccount;
    }
}
