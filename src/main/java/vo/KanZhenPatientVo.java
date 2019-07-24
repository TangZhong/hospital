package vo;

public class KanZhenPatientVo {

    private Integer caseCode;

    private String name;

    private Integer age;

    private String status;

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
