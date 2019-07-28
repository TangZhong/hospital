package vo;

public class KaiYaoPatientVo {

    private Integer caseCode;

    private String name;

    private Integer age;

    private String status;

    private String pres;

    private Integer presId;

    public Integer getPresId() {
        return presId;
    }

    public void setPresId(Integer presId) {
        this.presId = presId;
    }

    public String getPres() {
        return pres;
    }

    public void setPres(String pres) {
        this.pres = pres;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}
