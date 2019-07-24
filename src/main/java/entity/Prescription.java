package entity;

public class Prescription {

    private Integer id;
    private Integer case_id;
    private String name;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCase_id() {
        return case_id;
    }

    public void setCase_id(Integer case_id) {
        this.case_id = case_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
