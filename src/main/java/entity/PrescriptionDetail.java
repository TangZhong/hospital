package entity;

public class PrescriptionDetail {

    private Integer id;

    private Integer prescription_id;

    private String drug_name;

    private String usage;

    private String dosage;

    private String frequent;

    private Integer drug_amount;

    private Float drug_price;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPrescription_id() {
        return prescription_id;
    }

    public void setPrescription_id(Integer prescription_id) {
        this.prescription_id = prescription_id;
    }

    public String getDrug_name() {
        return drug_name;
    }

    public void setDrug_name(String drug_name) {
        this.drug_name = drug_name;
    }

    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
        this.usage = usage;
    }

    public String getDosage() {
        return dosage;
    }

    public void setDosage(String dosage) {
        this.dosage = dosage;
    }

    public String getFrequent() {
        return frequent;
    }

    public void setFrequent(String frequent) {
        this.frequent = frequent;
    }

    public Integer getDrug_amount() {
        return drug_amount;
    }

    public void setDrug_amount(Integer drug_amount) {
        this.drug_amount = drug_amount;
    }

    public Float getDrug_price() {
        return drug_price;
    }

    public void setDrug_price(Float drug_price) {
        this.drug_price = drug_price;
    }
}
