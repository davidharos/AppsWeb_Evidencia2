package Model;

public class Accounts {

    //Variables
    private int fk_idClient = 0;
    private int fk_idCard = 0;
    private int idAccount = 0;

    public Accounts (int fk_idClient, int fk_idCard, int idAccount){

        setFk_idClient(fk_idClient);
        setFk_idCard(fk_idCard);
        setIdAccount(idAccount);
    }


    //Getters and Setters
    public int getFk_idClient() {
        return fk_idClient;
    }

    public void setFk_idClient(int fk_idClient) {
        this.fk_idClient = fk_idClient;
    }

    public int getFk_idCard() {
        return fk_idCard;
    }

    public void setFk_idCard(int fk_idCard) {
        this.fk_idCard = fk_idCard;
    }

    public int getIdAccount() {
        return idAccount;
    }

    public void setIdAccount(int idAccount) {
        this.idAccount = idAccount;
    }
}
