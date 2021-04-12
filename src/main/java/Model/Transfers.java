package Model;

import java.util.Date;

public class Transfers {

    //Variables
    private int fk_idCards = 0;
    private int idTransfer = 0;
    private double amount = 0;
    private String recipient = "";
    private Date date = null;

    //Public transfers object
    public Transfers (int fk_idCards, int idTransfer, double amount, String recipient, Date date){

        setFk_idCards(fk_idCards);
        setIdTransfer(idTransfer);
        setAmount(amount);
        setRecipient(recipient);
        setDate(date);

    }

    //Getters and Setters

    public int getFk_idCards() {
        return fk_idCards;
    }

    public void setFk_idCards(int fk_idCards) {
        this.fk_idCards = fk_idCards;
    }

    public int getIdTransfer() {
        return idTransfer;
    }

    public void setIdTransfer(int idTransfer) {
        this.idTransfer = idTransfer;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getRecipient() {
        return recipient;
    }

    public void setRecipient(String recipient) {
        this.recipient = recipient;
    }

    public Date getDate() { return date; }

    public void setDate(Date date) {
        this.date = date;
    }

}
