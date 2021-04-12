package Model;

import java.util.Date;

public class Cards {

    //Variables
    private int fk_idAccout = 0;
    private int idCard = 0;
    private double balance = 0;
    private int cvv = 0;
    private Date creationDate = null;
    private Date expirationDate = null;

    //Object
    public Cards (int fk_idAccout, int idCard, double balance, int cvv, Date creationDate, Date expirationDate){

        setFk_idAccout(fk_idAccout);
        setIdCard(idCard);
        setBalance(balance);
        setCvv(cvv);
        setCreationDate(creationDate);
        setExpirationDate(expirationDate);

    }

    //Getters and Setters

    public int getFk_idAccout() {
        return fk_idAccout;
    }

    public void setFk_idAccout(int fk_idAccout) {
        this.fk_idAccout = fk_idAccout;
    }

    public int getIdCard() {
        return idCard;
    }

    public void setIdCard(int idCard) {
        this.idCard = idCard;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public int getCvv() {
        return cvv;
    }

    public void setCvv(int cvv) {
        this.cvv = cvv;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Date getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }
}
