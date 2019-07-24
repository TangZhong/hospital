package entity;

import java.util.Date;

public class Patient {

    private Integer id;

    private Integer caseCode;

    private String name;

    private String sex;

    private String idCard;

    private Date birthday;

    private Integer age;

    private String ageType;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCaseCode() {
        return caseCode;
    }

    public void setCaseCode(Integer caseCode) {
        this.caseCode = caseCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getAgeType() {
        return ageType;
    }

    public void setAgeType(String ageType) {
        this.ageType = ageType;
    }
}
