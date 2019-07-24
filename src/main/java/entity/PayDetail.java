package entity;

public class PayDetail {

    private Integer id;

    private Integer case_code;

    private String pro_name;

    private Float pro_price;

    private Integer pro_amount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCase_code() {
        return case_code;
    }

    public void setCase_code(Integer case_code) {
        this.case_code = case_code;
    }

    public String getPro_name() {
        return pro_name;
    }

    public void setPro_name(String pro_name) {
        this.pro_name = pro_name;
    }

    public Float getPro_price() {
        return pro_price;
    }

    public void setPro_price(Float pro_price) {
        this.pro_price = pro_price;
    }

    public Integer getPro_amount() {
        return pro_amount;
    }

    public void setPro_amount(Integer pro_amount) {
        this.pro_amount = pro_amount;
    }
}
